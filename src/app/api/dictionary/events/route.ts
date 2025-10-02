import { subscribe } from '@/lib/dictionary-events';
import { NextResponse } from 'next/server';

export const runtime = 'nodejs';

export async function GET() {
  const stream = new ReadableStream({
    start(controller) {
      const encoder = new TextEncoder();
      const send = (payload: unknown) => {
        const chunk = `data: ${JSON.stringify(payload)}\n\n`;
        controller.enqueue(encoder.encode(chunk));
      };
      const unsub = subscribe((data) => send({ type: 'update', data }));
      // send initial ping
      send({ type: 'ping' });
      const interval = setInterval(() => controller.enqueue(encoder.encode(':keep-alive\n\n')), 15000);
      return () => { clearInterval(interval); unsub(); };
    },
  });

  return new NextResponse(stream, {
    headers: {
      'Content-Type': 'text/event-stream',
      'Cache-Control': 'no-cache, no-transform',
      Connection: 'keep-alive',
    },
  });
}
