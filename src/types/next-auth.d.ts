import 'next-auth';
import 'next-auth/jwt';
import { UserRole } from '@/lib/roles';

declare module 'next-auth' {
  interface Session {
    isAdmin?: boolean;
    role?: UserRole;
    canEditDictionary?: boolean;
  }

  interface User {
    isAdmin?: boolean;
    role?: UserRole;
  }
}

declare module 'next-auth/jwt' {
  interface JWT {
    isAdmin?: boolean;
    role?: UserRole;
    canEditDictionary?: boolean;
  }
}
