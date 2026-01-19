import { ImageResponse } from 'next/og';

// Generar favicon desde el logo real
export const runtime = 'nodejs';

export const size = {
  width: 32,
  height: 32,
};

export const contentType = 'image/png';

export default async function Icon() {
  // Generar favicon con gradiente de marca
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
