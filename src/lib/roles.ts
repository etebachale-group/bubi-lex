// Sistema de roles para BubiLex
// 3 roles: usuario, colaborador, admin

export type UserRole = 'user' | 'collaborator' | 'admin';

export interface UserWithRole {
  email: string;
  role: UserRole;
  name?: string;
  image?: string;
}

// Obtener listas de emails por rol desde variables de entorno
function getEmailsByRole(envVar: string): string[] {
  return (process.env[envVar] || '')
    .split(',')
    .map(e => e.trim().toLowerCase())
    .filter(Boolean);
}

// Admins: acceso completo
const adminEmails = getEmailsByRole('ADMIN_GOOGLE_EMAILS');

// Colaboradores: pueden agregar/editar palabras
const collaboratorEmails = getEmailsByRole('COLLABORATOR_GOOGLE_EMAILS');

/**
 * Determina el rol de un usuario basado en su email
 */
export function getUserRole(email: string | null | undefined): UserRole {
  if (!email) return 'user';
  
  const normalizedEmail = email.toLowerCase();
  
  // Verificar si es admin
  if (adminEmails.length === 0 || adminEmails.includes(normalizedEmail)) {
    return 'admin';
  }
  
  // Verificar si es colaborador
  if (collaboratorEmails.includes(normalizedEmail)) {
    return 'collaborator';
  }
  
  // Por defecto es usuario normal
  return 'user';
}

/**
 * Verifica si un usuario tiene al menos el rol especificado
 */
export function hasRole(userRole: UserRole, requiredRole: UserRole): boolean {
  const roleHierarchy: Record<UserRole, number> = {
    user: 0,
    collaborator: 1,
    admin: 2,
  };
  
  return roleHierarchy[userRole] >= roleHierarchy[requiredRole];
}

/**
 * Verifica si un usuario es admin
 */
export function isAdmin(email: string | null | undefined): boolean {
  return getUserRole(email) === 'admin';
}

/**
 * Verifica si un usuario es colaborador o admin
 */
export function canEditDictionary(email: string | null | undefined): boolean {
  const role = getUserRole(email);
  return role === 'collaborator' || role === 'admin';
}

/**
 * Verifica si un usuario puede acceder al panel de administración
 */
export function canAccessAdminPanel(email: string | null | undefined): boolean {
  return isAdmin(email);
}

/**
 * Verifica si un usuario puede acceder al panel de colaborador
 */
export function canAccessCollaboratorPanel(email: string | null | undefined): boolean {
  return canEditDictionary(email);
}

/**
 * Obtiene el nombre del rol en español
 */
export function getRoleName(role: UserRole): string {
  const names: Record<UserRole, string> = {
    user: 'Usuario',
    collaborator: 'Colaborador',
    admin: 'Administrador',
  };
  
  return names[role];
}

/**
 * Obtiene el color del rol para UI
 */
export function getRoleColor(role: UserRole): string {
  const colors: Record<UserRole, string> = {
    user: 'from-gray-500 to-gray-600',
    collaborator: 'from-blue-500 to-cyan-500',
    admin: 'from-purple-500 to-pink-500',
  };
  
  return colors[role];
}
