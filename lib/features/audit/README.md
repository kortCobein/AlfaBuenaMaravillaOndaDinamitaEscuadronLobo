# 🔎 Auditorías — JC

**Responsable:** Julio Cesar Ramírez Vela  
**Historias:** US11 y US12

## Aquí programas

Tu código debe vivir principalmente dentro de:

```text
lib/features/audit/
```

Tus ramas Git son:

```text
feature/us11-listar-usuarios-jc
feature/us12-historico-carritos-jc
```

> La rama NO es una carpeta. Primero haces `git switch` a la rama de la US y después programas dentro de `lib/features/audit/`.

## Estructura

```text
lib/features/audit/
├── models/         ← usuario/resumen/histórico que necesite auditoría
├── services/       ← comunicación con backend de auditoría
├── repositories/   ← acceso a datos de usuarios e históricos
├── controllers/    ← estado y lógica de consulta
├── screens/        ← listados e históricos
└── widgets/        ← filas, tarjetas y filtros reutilizables
```

Ejemplos posibles:

```text
screens/users_screen.dart
screens/cart_history_screen.dart
controllers/audit_controller.dart
services/audit_service.dart
repositories/audit_repository.dart
widgets/user_tile.dart
```

No necesitas crear todos los archivos si la US no los requiere. La estructura existe para ordenar responsabilidades, no para inflar el código.

Evita modificar `main.dart`, rutas globales, `pubspec.yaml` o `core/` sin indicarlo en tu Pull Request.