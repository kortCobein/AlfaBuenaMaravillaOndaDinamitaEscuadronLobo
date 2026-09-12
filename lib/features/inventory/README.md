# 📦 Inventario — Cobain

**Responsable:** Kurt Cobain Vazquez Sanchez  
**Historias:** US06, US07 y US08

## Aquí programas

Tu código debe vivir principalmente dentro de:

```text
lib/features/inventory/
```

Tus ramas Git son:

```text
feature/us06-agregar-producto-cobain
feature/us07-editar-producto-cobain
feature/us08-eliminar-producto-cobain
```

> La rama NO es una carpeta. Primero haces `git switch` a la rama de la US y después programas dentro de `lib/features/inventory/`.

## Estructura

```text
lib/features/inventory/
├── models/         ← datos necesarios para inventario
├── services/       ← llamadas al backend para altas/cambios/bajas
├── repositories/   ← acceso a datos del inventario
├── controllers/    ← lógica de agregar, editar y eliminar
├── screens/        ← formularios/pantallas completas
└── widgets/        ← componentes visuales reutilizables
```

Ejemplos posibles:

```text
screens/add_product_screen.dart
screens/edit_product_screen.dart
controllers/inventory_controller.dart
services/inventory_service.dart
repositories/inventory_repository.dart
widgets/product_form.dart
```

No necesitas duplicar modelos que ya pertenezcan a un dominio compartido sin justificarlo. Si una US requiere tocar archivos globales, indícalo en la PR.

Evita modificar `main.dart`, rutas globales, `pubspec.yaml` o `core/` sin indicarlo en tu Pull Request.