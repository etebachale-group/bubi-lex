// Tipos de eventos del diccionario para realtime manual (SSE refresh)
export type DictionaryEvent =
  | { kind: 'insert'; id: number; bubi: string; spanish: string; ipa?: string | null }
  | { kind: 'bulk-insert'; count: number }
  | { kind: 'update'; id: number }
  | { kind: 'delete'; id: number };

type Subscriber = (data: DictionaryEvent) => void;

const subscribers = new Set<Subscriber>();

export function subscribe(fn: Subscriber): () => void {
  subscribers.add(fn);
  return () => subscribers.delete(fn);
}

export function broadcast(data: DictionaryEvent): void {
  for (const fn of subscribers) {
    try {
      fn(data);
    } catch {
      // ignorar errores de un subscriber para no romper el resto
    }
  }
}
