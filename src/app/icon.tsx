import { ImageResponse } from 'next/og';
import { readFile } from 'fs/promises';
import { join } from 'path';

// Generar favicon desde el logo real
export const runtime = 'nodejs';

export const size = {
  width: 32,
  height: 32,
};

export const contentType = 'image/png';

export default async function Icon() {
  try {
    // Leer el logo desde el sistema de archivos
    const logoPath = join(process.cwd(), 'public', 'logo.png');
    const logoBuffer = await readFile(logoPath);
    const logoBase64 = logoBuffer.toString('base64');
    
    return new ImageResponse(
      (
        <div
          style={{
            width: '100%',
            height: '100%',
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'center',
            background: 'white',
            padding: '4px',
          }}
        >
          <img
            src={`data:image/png;base64,${logoBase64}`}
            alt="BubiLex"
            width="24"
            height="24"
            style={{
              objectFit: 'contain',
            }}
          />
        </div>
      ),
      {
        ...size,
      }
    );
  } catch (error) {
    // Fallback si hay error leyendo el logo
    return new ImageResponse(
      (
        <div
          style={{
            width: '100%',
            height: '100%',
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'center',
            background: 'linear-gradient(135deg, #9333ea 0%, #ec4899 100%)',
            borderRadius: '6px',
          }}
        >
          <div
            style={{
              fontSize: '20px',
              fontWeight: 'bold',
              color: 'white',
              fontFamily: 'system-ui, sans-serif',
            }}
          >
            B
          </div>
        </div>
      ),
      {
        ...size,
      }
    );
  }
}
