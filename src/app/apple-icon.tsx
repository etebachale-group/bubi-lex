import { ImageResponse } from 'next/og';

// Generar Apple Touch Icon desde el logo real
export const runtime = 'nodejs';

export const size = {
  width: 180,
  height: 180,
};

export const contentType = 'image/png';

export default function AppleIcon() {
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
          borderRadius: '40px',
        }}
      >
        <div
          style={{
            fontSize: '100px',
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
