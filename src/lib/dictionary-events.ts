type Subscriber = (data: unknown) => void;

const subscribers = new Set<Subscriber>();

export function subscribe(fn: Subscriber): () => void {
  subscribers.add(fn);
  return () => subscribers.delete(fn);
}

export function broadcast(data: unknown): void {
  for (const fn of subscribers) {
    try {
      fn(data);
    } catch {
      // ignore subscriber errors
    }
  }
}
