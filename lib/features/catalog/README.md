# 🛍️ Catálogo — Leonel

**Responsable:** Leonel Hernández Trejo  
**Historias:** US03, US04 y US05

## Aquí programas

Tu código debe vivir principalmente dentro de:

```text
lib/features/catalog/
```

Tus ramas Git son:

```text
feature/us03-catalogo-leonel
feature/us04-filtros-leonel
feature/us05-detalle-producto-leonel
```

> La rama NO es una carpeta. Primero haces `git switch` a la rama de la US y después programas dentro de `lib/features/catalog/`.

## Estructura

```text
lib/features/catalog/
├── models/         ← producto, categoría, etc.
├── services/       ← comunicación con backend del catálogo
├── repositories/   ← acceso a datos de productos
├── controllers/    ← estado, filtros, detalle
├── screens/        ← catálogo y detalle
└── widgets/        ← cards, filtros y componentes visuales
```

Ejemplos posibles:

```text
screens/catalog_screen.dart
screens/product_detail_screen.dart
controllers/catalog_controller.dart
controllers/product_filter_controller.dart
services/product_service.dart
repositories/product_repository.dart
models/product.dart
widgets/product_card.dart
```

No tienes que crear archivos sólo por llenar carpetas. Cada separación debe tener una razón clara.

Evita modificar `main.dart`, rutas globales, `pubspec.yaml` o `core/` sin indicarlo en tu Pull Request.