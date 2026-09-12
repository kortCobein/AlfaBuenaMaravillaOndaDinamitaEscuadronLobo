# 🔐 Auth — Sebas

**Responsable:** Sebastián Mendoza Montoya  
**Historias:** US01 y US02

## Aquí programas

Todo el código de autenticación que corresponda a tus historias debe vivir dentro de:

```text
lib/features/auth/
```

Tus ramas Git son:

```text
feature/us01-login-sebas
feature/us02-logout-sebas
```

> La rama NO es una carpeta. Primero cambias de rama con Git y después creas/editas archivos dentro de `lib/features/auth/`.

## Dónde colocar cada cosa

```text
lib/features/auth/
├── models/         ← datos/sesión/usuario
├── services/       ← comunicación con backend de autenticación
├── repositories/   ← acceso a datos para auth
├── controllers/    ← lógica/estado de login y logout
├── screens/        ← pantallas completas
└── widgets/        ← componentes visuales reutilizables
```

Ejemplo para US01:

```text
screens/login_screen.dart
controllers/login_controller.dart
services/auth_service.dart
repositories/auth_repository.dart
models/user_session.dart
widgets/login_form.dart
```

No necesitas crear todos esos archivos si tu solución no los requiere. SOLID se aplica con criterio.

Evita modificar `main.dart`, rutas globales, `pubspec.yaml` o `core/` sin indicarlo en tu Pull Request.