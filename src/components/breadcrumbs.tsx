import Link from "next/link";
import React from "react";

export interface BreadcrumbItem {
  label: string;
  href?: string;
}

interface BreadcrumbsProps {
  items: BreadcrumbItem[];
}

const Breadcrumbs = ({ items }: BreadcrumbsProps) => {
  if (!items?.length) return null;
  const lastIndex = items.length - 1;
  return (
    <nav aria-label="Breadcrumb" className="mb-4">
      <ol className="flex items-center gap-2 text-sm text-muted-foreground">
        {items.map((item, idx) => {
          const isLast = idx === lastIndex;
          const content = isLast || !item.href ? (
            <span aria-current={isLast ? "page" : undefined} className={isLast ? "text-foreground font-medium" : undefined}>
              {item.label}
            </span>
          ) : (
            <Link href={item.href} className="hover:underline">
              {item.label}
            </Link>
          );
          return (
            <li key={`${item.label}-${idx}`} className="flex items-center gap-2">
              {content}
              {!isLast && <span aria-hidden="true" className="text-muted-foreground">/</span>}
            </li>
          );
        })}
      </ol>
    </nav>
  );
};

export default Breadcrumbs;
