import React from 'react';

interface StructuredDataProps<T = unknown> {
  data: T;
}

const StructuredData = <T,>({ data }: StructuredDataProps<T>) => {
  const json = JSON.stringify(data);
  return (
    <script
      type="application/ld+json"
      dangerouslySetInnerHTML={{ __html: json }}
    />
  );
};

export default StructuredData;
