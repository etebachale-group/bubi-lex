// Rate limiting simple basado en memoria para proteger APIs públicas
// Para producción, considera usar Redis o un servicio externo como Upstash

interface RateLimitEntry {
  count: number;
  resetAt: number;
}

const store = new Map<string, RateLimitEntry>();

// Limpiar entradas expiradas cada 5 minutos
setInterval(() => {
  const now = Date.now();
  for (const [key, entry] of store.entries()) {
    if (entry.resetAt < now) {
      store.delete(key);
    }
  }
}, 5 * 60 * 1000);

interface RateLimitConfig {
  interval: number; // en milisegundos
  maxRequests: number;
}

interface RateLimitResult {
  success: boolean;
  limit: number;
  remaining: number;
  reset: number;
}

export function rateLimit(identifier: string, config: RateLimitConfig): RateLimitResult {
  const now = Date.now();
  const entry = store.get(identifier);

  if (!entry || entry.resetAt < now) {
    // Nueva ventana de tiempo
    const resetAt = now + config.interval;
    store.set(identifier, { count: 1, resetAt });
    return {
      success: true,
      limit: config.maxRequests,
      remaining: config.maxRequests - 1,
      reset: resetAt,
    };
  }

  if (entry.count >= config.maxRequests) {
    // Límite excedido
    return {
      success: false,
      limit: config.maxRequests,
      remaining: 0,
      reset: entry.resetAt,
    };
  }

  // Incrementar contador
  entry.count++;
  return {
    success: true,
    limit: config.maxRequests,
    remaining: config.maxRequests - entry.count,
    reset: entry.resetAt,
  };
}

// Helper para obtener identificador de IP desde Request
export function getClientIdentifier(req: Request): string {
  // Intentar obtener IP real desde headers de proxy
  const forwarded = req.headers.get('x-forwarded-for');
  const realIp = req.headers.get('x-real-ip');
  
  if (forwarded) {
    return forwarded.split(',')[0].trim();
  }
  
  if (realIp) {
    return realIp;
  }
  
  // Fallback a un identificador genérico
  return 'unknown';
}

// Configuraciones predefinidas
export const RATE_LIMITS = {
  // 100 requests por minuto
  strict: { interval: 60 * 1000, maxRequests: 100 },
  // 300 requests por minuto
  moderate: { interval: 60 * 1000, maxRequests: 300 },
  // 1000 requests por minuto
  lenient: { interval: 60 * 1000, maxRequests: 1000 },
};
