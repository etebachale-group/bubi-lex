// Audit logger con soporte para persistencia en base de datos
// Controlado por env var ENABLE_AUDIT_LOG y AUDIT_LOG_PERSIST

import { getSupabase } from './db';
import { logger } from './logger';

interface AuditEntry {
  ts: string;               // ISO timestamp
  actorEmail: string | null; // Admin email (if available)
  action: string;            // e.g., 'dictionary.create'
  target?: any;              // Target identifier (e.g., word id)
  meta?: Record<string, any>;// Additional metadata
}

const buffer: AuditEntry[] = [];
const MAX_ENTRIES = 500; // prevent unbounded growth

const isEnabled = process.env.ENABLE_AUDIT_LOG === 'true';
const shouldPersist = process.env.AUDIT_LOG_PERSIST === 'true';

export function recordAdminAudit(entry: Omit<AuditEntry, 'ts'>) {
  if (!isEnabled) return;
  
  const full: AuditEntry = { ts: new Date().toISOString(), ...entry };
  
  // Agregar al buffer en memoria
  buffer.push(full);
  if (buffer.length > MAX_ENTRIES) buffer.shift();
  
  // Log en desarrollo
  if (process.env.NODE_ENV !== 'production') {
    logger.info('[AUDIT]', full);
  }
  
  // Persistir en base de datos si está habilitado
  if (shouldPersist) {
    persistAuditEntry(full).catch(err => {
      logger.error('Error al persistir entrada de auditoría', err);
    });
  }
}

async function persistAuditEntry(entry: AuditEntry) {
  try {
    const supabase = getSupabase();
    const { error } = await supabase
      .from('admin_audit_log')
      .insert({
        timestamp: entry.ts,
        actor_email: entry.actorEmail,
        action: entry.action,
        target: entry.target ? String(entry.target) : null,
        meta: entry.meta ? JSON.stringify(entry.meta) : null,
      });
    
    if (error) {
      logger.error('Error al insertar en admin_audit_log', error);
    }
  } catch (err) {
    logger.error('Error en persistAuditEntry', err);
  }
}

export function getRecentAudit(count = 50): AuditEntry[] {
  return buffer.slice(-count).reverse();
}

export async function getAuditFromDB(limit = 50): Promise<AuditEntry[]> {
  if (!shouldPersist) {
    return getRecentAudit(limit);
  }
  
  try {
    const supabase = getSupabase();
    const { data, error } = await supabase
      .from('admin_audit_log')
      .select('*')
      .order('timestamp', { ascending: false })
      .limit(limit);
    
    if (error) {
      logger.error('Error al obtener audit log de BD', error);
      return getRecentAudit(limit);
    }
    
    return (data || []).map(row => ({
      ts: row.timestamp,
      actorEmail: row.actor_email,
      action: row.action,
      target: row.target,
      meta: row.meta ? JSON.parse(row.meta) : undefined,
    }));
  } catch (err) {
    logger.error('Error en getAuditFromDB', err);
    return getRecentAudit(limit);
  }
}

