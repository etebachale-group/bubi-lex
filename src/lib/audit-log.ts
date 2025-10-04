// Simple in-memory audit logger (can be swapped for persistent storage later)
// Controlled by env var ENABLE_AUDIT_LOG. In production you should replace this with a DB or external log.

interface AuditEntry {
  ts: string;               // ISO timestamp
  actorEmail: string | null; // Admin email (if available)
  action: string;            // e.g., 'dictionary.create'
  target?: any;              // Target identifier (e.g., word id)
  meta?: Record<string, any>;// Additional metadata
}

const buffer: AuditEntry[] = [];
const MAX_ENTRIES = 500; // prevent unbounded growth

export function recordAdminAudit(entry: Omit<AuditEntry, 'ts'>) {
  if (process.env.ENABLE_AUDIT_LOG !== 'true') return;
  const full: AuditEntry = { ts: new Date().toISOString(), ...entry };
  buffer.push(full);
  if (buffer.length > MAX_ENTRIES) buffer.shift();
  if (process.env.NODE_ENV !== 'production') {
    // eslint-disable-next-line no-console
    console.log('[AUDIT]', full);
  }
}

export function getRecentAudit(count = 50): AuditEntry[] {
  return buffer.slice(-count).reverse();
}
