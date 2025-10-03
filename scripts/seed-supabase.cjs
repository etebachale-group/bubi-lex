/* eslint-disable no-console */
/**
 * Seed Supabase dictionary_entries from JSON file
 * Usage: node scripts/seed-supabase.cjs [path/to/seed.json]
 * Default: ./db/seed-dictionary.json
 * 
 * Required environment variables:
 * - SUPABASE_URL or NEXT_PUBLIC_SUPABASE_URL
 * - SUPABASE_SERVICE_ROLE_KEY
 */

const fs = require('fs');
const path = require('path');

// Load Supabase client
const { createClient } = require('@supabase/supabase-js');

const BATCH_SIZE = 500;

async function main() {
  // Get file path from args or use default
  const inputFile = process.argv[2] || path.join(process.cwd(), 'db', 'seed-dictionary.json');

  if (!fs.existsSync(inputFile)) {
    console.error(`Error: File not found: ${inputFile}`);
    process.exit(1);
  }

  // Read and parse JSON file
  console.log(`Reading seed data from: ${inputFile}`);
  const rawData = fs.readFileSync(inputFile, 'utf8');
  const items = JSON.parse(rawData);

  if (!Array.isArray(items) || items.length === 0) {
    console.error('Error: Input file must contain a non-empty array of items');
    process.exit(1);
  }

  console.log(`Loaded ${items.length} items to seed`);

  // Setup Supabase client
  const supabaseUrl = process.env.SUPABASE_URL || process.env.NEXT_PUBLIC_SUPABASE_URL;
  const serviceRoleKey = process.env.SUPABASE_SERVICE_ROLE_KEY;

  if (!supabaseUrl) {
    console.error('Error: Missing SUPABASE_URL or NEXT_PUBLIC_SUPABASE_URL environment variable');
    process.exit(1);
  }

  if (!serviceRoleKey) {
    console.error('Error: Missing SUPABASE_SERVICE_ROLE_KEY environment variable');
    console.error('This key is required for privileged operations like seeding');
    process.exit(1);
  }

  const supabase = createClient(supabaseUrl, serviceRoleKey, {
    auth: {
      autoRefreshToken: false,
      persistSession: false,
    },
  });

  // Normalize items
  const normalizedItems = items.map((item) => ({
    bubi: (item.bubi || '').trim(),
    spanish: (item.spanish || '').trim(),
    ipa: item.ipa ? item.ipa.trim() : null,
    notes: item.notes ? item.notes.trim() : null,
  }));

  // Process in batches
  let totalInserted = 0;
  let totalErrors = 0;

  for (let i = 0; i < normalizedItems.length; i += BATCH_SIZE) {
    const batch = normalizedItems.slice(i, i + BATCH_SIZE);
    const batchNum = Math.floor(i / BATCH_SIZE) + 1;
    const totalBatches = Math.ceil(normalizedItems.length / BATCH_SIZE);

    console.log(`Processing batch ${batchNum}/${totalBatches} (${batch.length} items)...`);

    try {
      const { data, error } = await supabase
        .from('dictionary_entries')
        .upsert(batch, { onConflict: 'entry_key' })
        .select();

      if (error) {
        console.error(`Batch ${batchNum} error:`, error.message);
        totalErrors += batch.length;
      } else {
        const inserted = data?.length ?? batch.length;
        totalInserted += inserted;
        console.log(`Batch ${batchNum} complete: ${inserted} rows upserted`);
      }
    } catch (err) {
      console.error(`Batch ${batchNum} exception:`, err.message);
      totalErrors += batch.length;
    }
  }

  console.log('\n=== Seeding Complete ===');
  console.log(`Total items processed: ${normalizedItems.length}`);
  console.log(`Successfully upserted: ${totalInserted}`);
  console.log(`Errors: ${totalErrors}`);

  if (totalErrors > 0) {
    process.exit(1);
  }
}

main().catch((err) => {
  console.error('Fatal error:', err);
  process.exit(1);
});
