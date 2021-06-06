export function getCategories() {
  return fetch("/categories.json").then((r) => r.json());
}
