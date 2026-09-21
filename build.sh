#!/usr/bin/env bash
# Arma index.html (página completa) a partir de src/page.html.
# El fragmento src/page.html es también lo que se publica como artifact.
set -euo pipefail
cd "$(dirname "$0")"

head_part="$(sed -n '1,/<\/style>/p' src/page.html)"
body_part="$(sed -n '/<\/style>/,$p' src/page.html | tail -n +2)"

{
  echo '<!doctype html>'
  echo '<html lang="es">'
  echo '<head>'
  echo '<meta charset="utf-8">'
  echo '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">'
  echo '<meta name="description" content="Un ramo de 21 flores amarillas para Jaqui. 21 de septiembre.">'
  echo '<meta name="theme-color" content="#0E1E16">'
  echo '<link rel="icon" href="data:image/svg+xml,%3Csvg xmlns=%27http://www.w3.org/2000/svg%27 viewBox=%270 0 100 100%27%3E%3Ctext y=%27.9em%27 font-size=%2790%27%3E%F0%9F%8C%BC%3C/text%3E%3C/svg%3E">'
  echo "$head_part"
  echo '</head>'
  echo '<body>'
  echo "$body_part"
  echo '</body>'
  echo '</html>'
} > index.html

echo "index.html generado ($(wc -c < index.html) bytes)"
