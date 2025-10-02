import { NextResponse } from 'next/server';
import { query } from '@/lib/db';

// Incrementa el contador de "likes" para una noticia determinada
export async function POST(_req: Request, { params }: { params: { id: string } }) {
	try {
		const idNum = Number(params.id);
		if (!Number.isFinite(idNum) || idNum <= 0) {
			return NextResponse.json({ error: 'ID inválido' }, { status: 400 });
		}

		// Actualizamos y devolvemos el valor actualizado en una sola operación
		await query('UPDATE news SET likes = likes + 1 WHERE id = ?', [idNum]);
		const rows = await query<Array<{ likes: number }>>('SELECT likes FROM news WHERE id = ?', [idNum]);
		if (rows.length === 0) {
			return NextResponse.json({ error: 'Noticia no encontrada' }, { status: 404 });
		}
		return NextResponse.json({ id: idNum, likes: rows[0].likes });
	} catch (err) {
		console.error(err);
		return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
	}
}

