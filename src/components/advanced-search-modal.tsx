"use client";

import React from 'react';
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogDescription, DialogFooter } from '@/components/ui/dialog';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';

interface AdvancedSearchModalProps {
  isOpen: boolean;
  onClose: () => void;
  onSearch: (criteria: { keyword: string; category: string; dateRange: string }) => void;
}

const AdvancedSearchModal: React.FC<AdvancedSearchModalProps> = ({ isOpen, onClose, onSearch }) => {
  const [keyword, setKeyword] = React.useState('');
  const [category, setCategory] = React.useState('');
  const [dateRange, setDateRange] = React.useState('');

  const handleSearch = () => {
    onSearch({ keyword, category, dateRange });
    onClose();
  };

  return (
    <Dialog open={isOpen} onOpenChange={onClose}>
      <DialogContent className="sm:max-w-[425px]">
        <DialogHeader>
          <DialogTitle>Búsqueda Avanzada</DialogTitle>
          <DialogDescription>
            Define criterios más específicos para tu búsqueda.
          </DialogDescription>
        </DialogHeader>
        <div className="grid gap-4 py-4">
          <div className="grid grid-cols-4 items-center gap-4">
            <Label htmlFor="keyword" className="text-right">
              Palabra clave
            </Label>
            <Input
              id="keyword"
              value={keyword}
              onChange={(e) => setKeyword(e.target.value)}
              className="col-span-3"
            />
          </div>
          <div className="grid grid-cols-4 items-center gap-4">
            <Label htmlFor="category" className="text-right">
              Categoría
            </Label>
            <Input
              id="category"
              value={category}
              onChange={(e) => setCategory(e.target.value)}
              className="col-span-3"
            />
          </div>
          <div className="grid grid-cols-4 items-center gap-4">
            <Label htmlFor="dateRange" className="text-right">
              Rango de fechas
            </Label>
            <Input
              id="dateRange"
              value={dateRange}
              onChange={(e) => setDateRange(e.target.value)}
              className="col-span-3"
            />
          </div>
        </div>
        <DialogFooter>
          <Button type="submit" onClick={handleSearch}>Buscar</Button>
        </DialogFooter>
      </DialogContent>
    </Dialog>
  );
};

export default AdvancedSearchModal;
