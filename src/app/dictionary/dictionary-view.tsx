"use client";

import { useState } from 'react';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { Input } from '@/components/ui/input';
import { SearchX } from 'lucide-react';

interface DictionaryEntry {
  bubi: string;
  spanish: string;
}

interface DictionaryViewProps {
  dictionary: DictionaryEntry[];
}

const DictionaryView = ({ dictionary }: DictionaryViewProps) => {
  const [searchTerm, setSearchTerm] = useState('');

  const filteredDictionary = dictionary.filter(
    (entry) =>
      entry.bubi.toLowerCase().includes(searchTerm.toLowerCase()) ||
      entry.spanish.toLowerCase().includes(searchTerm.toLowerCase())
  );

  return (
    <div className="flex flex-col gap-8">
      <h1 className="text-3xl font-bold font-headline">Diccionario Bubi-Español</h1>
      <Input
        placeholder="Busca una palabra en Bubi o Español..."
        value={searchTerm}
        onChange={(e) => setSearchTerm(e.target.value)}
        className="max-w-sm"
      />

      {filteredDictionary.length > 0 ? (
        <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
          {filteredDictionary.map((entry, index) => (
            <Card key={index}>
              <CardHeader>
                <CardTitle className="font-headline text-primary">{entry.bubi}</CardTitle>
              </CardHeader>
              <CardContent>
                <p>{entry.spanish}</p>
              </CardContent>
            </Card>
          ))}
        </div>
      ) : (
        <div className="flex flex-col items-center justify-center text-center py-20">
          <SearchX className="w-16 h-16 text-muted-foreground mb-4" />
          <h2 className="text-2xl font-semibold">No se encontraron resultados</h2>
          <p className="text-muted-foreground mt-2">
            No hemos encontrado ninguna palabra que coincida con tu búsqueda.
          </p>
        </div>
      )}
    </div>
  );
};

export default DictionaryView;