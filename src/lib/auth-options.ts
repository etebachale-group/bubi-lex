import type { NextAuthOptions } from 'next-auth';
import GoogleProvider from 'next-auth/providers/google';
import { logger } from './logger';

const allowed = (process.env.ADMIN_GOOGLE_EMAILS || '')
  .split(',')
  .map(e => e.trim().toLowerCase())
  .filter(Boolean);

export const authOptions: NextAuthOptions = {
  providers: [
    GoogleProvider({
      clientId: process.env.GOOGLE_CLIENT_ID || '',
      clientSecret: process.env.GOOGLE_CLIENT_SECRET || '',
    }),
  ],
  callbacks: {
    async signIn({ user }) {
      if (allowed.length === 0) return true;
      const email = user.email?.toLowerCase();
      const isAllowed = !!email && allowed.includes(email);
      
      if (!isAllowed) {
        logger.warn('Intento de acceso denegado', { email });
      }
      
      return isAllowed;
    },
    async session({ session, token }) {
      if (session.user?.email) {
        session.isAdmin = allowed.length === 0 || allowed.includes(session.user.email.toLowerCase());
      }
      return session;
    },
    async jwt({ token }) {
      const email = token.email?.toLowerCase();
      token.isAdmin = allowed.length === 0 || (email && allowed.includes(email));
      return token;
    },
  },
  pages: { signIn: '/admin/login' },
  session: { strategy: 'jwt' },
  secret: process.env.NEXTAUTH_SECRET,
};
