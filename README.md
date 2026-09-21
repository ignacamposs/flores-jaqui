# 🌼 Flores amarillas para Jaqui

Un ramo de 21 flores amarillas que no se marchitan, para el 21 de septiembre.

Cada flor guarda un motivo: se toca una flor y aparece. El ramo empieza con 7 y
se completa hasta 21 con el botón **Sumar una flor** (la cuenta queda guardada en
el navegador de quien lo abre).

## Cómo editarlo

Todo el contenido vive en `src/page.html`:

- **El nombre y los textos**: el `<h1>`, el párrafo de entrada y la carta (`<article class="letter">`).
- **Los 21 motivos**: el array `REASONS` dentro del `<script>`. Cambiá los que quieras,
  respetando que sean 21 (o ajustá también la constante `TOTAL`).
- **Cuántas flores se ven al abrir**: la constante `START`.
- **Los colores**: las variables CSS de `:root` (`--gold`, `--night`, `--leaf`…).

Después de editar, regenerá la página completa:

```bash
./build.sh   # arma index.html a partir de src/page.html
```

## Cómo verlo

Es una sola página estática, sin dependencias ni build de verdad:

```bash
npx serve .      # o: python3 -m http.server
```

Abrir `index.html` directo en el navegador también funciona.

## Cómo publicarlo

- **GitHub Pages**: Settings → Pages → Deploy from a branch → esta rama, carpeta `/ (root)`.
- **Vercel / Netlify**: importar el repo; no hace falta comando de build, el directorio
  raíz ya es el sitio.
