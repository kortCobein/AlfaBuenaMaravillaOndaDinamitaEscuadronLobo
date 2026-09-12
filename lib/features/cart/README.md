# 🛒 Carrito — Ariel

**Responsable:** Angel Ariel Escobedo Lugo  
**Historias:** US09 y US10

## Aquí programas

Tu código debe vivir principalmente dentro de:

```text
lib/features/cart/
```

Tus ramas Git son:

```text
feature/us09-agregar-carrito-ariel
feature/us10-gestionar-carrito-ariel
```

> La rama NO es una carpeta. Primero haces `git switch` a la rama de la US y después programas dentro de `lib/features/cart/`.

## Estructura

```text
lib/features/cart/
├── models/         ← carrito, item, cantidades
├── services/       ← comunicación con backend del carrito
├── repositories/   ← acceso a datos del carrito
├── controllers/    ← agregar, modificar, eliminar
├── screens/        ← vista del carrito
└── widgets/        ← filas, controles de cantidad, etc.
```

Ejemplos posibles:

```text
screens/cart_screen.dart
controllers/cart_controller.dart
services/cart_service.dart
repositories/cart_repository.dart
models/cart_item.dart
widgets/cart_item_tile.dart
```

No crees capas innecesarias: separa sólo cuando exista una responsabilidad distinta.

Evita modificar `main.dart`, rutas globales, `pubspec.yaml` o `core/` sin indicarlo en tu Pull Request.