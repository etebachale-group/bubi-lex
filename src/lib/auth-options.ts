import type { NextAuthOptions } from 'next-auth';
import GoogleProvider from 'next-auth/providers/google';
import { logger } from './logger';
import { getUserRole, isAdmin, canEditDictionary } from './roles';

export const authOptions: NextAuthOptions = {
  providers: [
    GoogleProvider({
      clientId: process.env.GOOGLE_CLIENT_ID || '',
      clientSecret: process.env.GOOGLE_CLIENT_SECRET || '',
    }),
  ],
  callbacks: {
    async signIn({ user }) {
      const email = user.email?.toLowerCase();
      const role = getUserRole(email);
      
      // Permitir acceso a todos los usuarios autenticados
      // El rol determinará qué pueden hacer
      if (role === 'user') {
        logger.info('Usuario normal autenticado', { email });
      } else {
        logger.info('Usuario con permisos especiales autenticado', { email, role });
      }
      
      return true;
    },
    async session({ session, token }) {
      if (session.user?.email) {
        const email = session.user.email.toLowerCase();
        const role = getUserRole(email);
        
        // Agregar información de rol a la sesión
        session.isAdmin = isAdmin(email);
        session.role = role;
        session.canEditDictionary = canEditDictionary(email);
      }
      return session;
    },
    async jwt({ token }) {
      const email = token.email?.toLowerCase();
      const role = getUserRole(email);
      
      token.isAdmin = isAdmin(email);
      token.role = role;
      token.canEditDictionary = canEditDictionary(email);
      
      return token;
    },
  },
  pages: { signIn: '/admin/login' },
  session: { strategy: 'jwt' },
  secret: process.env.NEXTAUTH_SECRET,
};
