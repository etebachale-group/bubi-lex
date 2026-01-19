import { ImageResponse } from 'next/og';

// Generar imagen para Open Graph (redes sociales)
export const runtime = 'edge';

export const alt = 'BubiLex - Diccionario Bubi-Español';
export const size = {
  width: 1200,
  height: 630,
};

export const contentType = 'image/png';

export default async function OGImage() {
  return new ImageResponse(
    (
      <div
        style={{
          height: '100%',
          width: '100%',
          display: 'flex',
          flexDirection: 'column',
          alignItems: 'center',
          justifyContent: 'center',
          background: 'linear-gradient(135deg, #667eea 0%, #764ba2 100%)',
          fontFamily: 'system-ui',
        }}
      >
        <div
          style={{
            display: 'flex',
            flexDirection: 'column',
            alignItems: 'center',
            justifyContent: 'center',
            gap: 20,
          }}
        >
          <div
            style={{
              fontSize: 180,
              fontWeight: 'bold',
              color: 'white',
              textShadow: '0 4px 20px rgba(0,0,0,0.3)',
            }}
          >
            BubiLex
          </div>
          <div
            style={{
              fontSize: 48,
              color: 'rgba(255,255,255,0.9)',
              textAlign: 'center',
            }}
          >
            Diccionario Bubi-Español
          </div>
          <div
            style={{
              fontSize: 32,
              color: 'rgba(255,255,255,0.8)',
              textAlign: 'center',
            }}
          >
            Preservando la lengua y cultura del pueblo Bubi
          </div>
        </div>
      </div>
    ),
    {
      ...size,
    }
  );
}
