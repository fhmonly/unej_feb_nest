export function normalizeSlug(input: string, maxLength = 100): string {
  return input
    .toLowerCase()
    .trim()
    .replace(/\s+/g, '-') // spasi → dash
    .replace(/[^a-z0-9-]/g, '') // remove invalid char
    .replace(/-+/g, '-') // remove double dash
    .replace(/^-|-$/g, '') // trim dash
    .slice(0, maxLength) // truncate
    .replace(/-$/g, ''); // avoid trailing dash
}
