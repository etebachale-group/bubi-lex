import { NextResponse } from 'next/server';
import path from 'path';
import fs from 'fs/promises';

export const runtime = 'nodejs';

function sanitizeFilename(name: string) {
  return name.replace(/[^a-zA-Z0-9._-]/g, '_');
}

export async function POST(req: Request) {
  try {
    const form = await req.formData();
    const file = form.get('file');
    const kindRaw = (form.get('kind') as string | null) ?? 'auto';
    if (!(file instanceof File)) {
      return NextResponse.json({ error: 'No file provided' }, { status: 400 });
    }

    const origName = sanitizeFilename(file.name || 'upload');
    const arrayBuffer = await file.arrayBuffer();
    const buffer = Buffer.from(arrayBuffer);

    // Decide destination folder by kind or MIME
    const mime = file.type || '';
    const isImage = kindRaw === 'image' || (kindRaw === 'auto' && mime.startsWith('image/'));
    const isVideo = kindRaw === 'video' || (kindRaw === 'auto' && mime.startsWith('video/'));
    const folder = isVideo ? 'videos' : 'images';

    const extFromName = path.extname(origName);
    const ext = extFromName || (isImage ? '.png' : isVideo ? '.mp4' : '');
    const unique = `${Date.now()}-${Math.random().toString(36).slice(2, 8)}`;
    const filename = `${unique}${ext}`;
    const uploadDir = path.join(process.cwd(), 'public', 'uploads', folder);
    await fs.mkdir(uploadDir, { recursive: true });
    const target = path.join(uploadDir, filename);
    await fs.writeFile(target, buffer);

    const url = `/uploads/${folder}/${filename}`;
    return NextResponse.json({ ok: true, url, filename });
  } catch (err) {
    console.error(err);
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
  }
}
