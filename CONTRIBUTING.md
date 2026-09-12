# Guía de contribución — Sprint 2

Este repositorio usa un flujo simple para que cinco personas trabajen en paralelo sin romper la base Flutter.

## 🚨 Antes de programar: rama ≠ carpeta

Hay dos cosas distintas:

1. **Rama Git**: la versión del proyecto en la que trabajas.
2. **Carpeta dentro de `lib/`**: el lugar físico donde creas tus archivos `.dart`.

Ejemplo: Sebas trabaja la US01 en la rama:

```text
feature/us01-login-sebas
```

pero programa dentro de:

```text
lib/features/auth/
```

La rama se selecciona con Git. La carpeta se abre en el explorador de VS Code.

## 📍 Dónde programa cada integrante

| Integrante | Historias | Ramas Git | Carpeta donde crea su código |
|---|---|---|---|
| Sebastián Mendoza Montoya | US01, US02 | `feature/us01-login-sebas`, `feature/us02-logout-sebas` | `lib/features/auth/` |
| Leonel Hernández Trejo | US03, US04, US05 | `feature/us03-catalogo-leonel`, `feature/us04-filtros-leonel`, `feature/us05-detalle-producto-leonel` | `lib/features/catalog/` |
| Kurt Cobain Vazquez Sanchez | US06, US07, US08 | `feature/us06-agregar-producto-cobain`, `feature/us07-editar-producto-cobain`, `feature/us08-eliminar-producto-cobain` | `lib/features/inventory/` |
| Angel Ariel Escobedo Lugo | US09, US10 | `feature/us09-agregar-carrito-ariel`, `feature/us10-gestionar-carrito-ariel` | `lib/features/cart/` |
| Julio Cesar Ramírez Vela | US11, US12 | `feature/us11-listar-usuarios-jc`, `feature/us12-historico-carritos-jc` | `lib/features/audit/` |

Cada una de esas carpetas ya existe y contiene su propio `README.md` con ejemplos específicos.

## 🧱 Qué significan las subcarpetas

Dentro de cada módulo ya existen:

```text
models/         datos y entidades del módulo
services/       comunicación con el backend
repositories/   acceso/coordinación de datos
controllers/    lógica y estado
screens/        pantallas completas
widgets/        componentes visuales reutilizables
```

No es obligatorio crear un archivo en todas. SOLID se aplica con criterio: separa responsabilidades cuando realmente existan.

## Herramientas comunes

Todos trabajaremos con:

- Visual Studio Code
- Flutter + Dart
- Git
- GitHub

En VS Code instala las extensiones recomendadas de Dart y Flutter cuando aparezca el aviso del repositorio.

## Regla principal

**Nadie desarrolla directamente en `main` ni en `develop`.**

Cada historia de usuario ya tiene una rama `feature/*` asignada. El trabajo se hace en esa rama y se entrega mediante Pull Request hacia `develop`.

`main` representa la versión estable. `develop` representa la integración del sprint.

## Primera vez en una computadora

Abre una terminal en VS Code y ejecuta:

```bash
git clone https://github.com/kortCobein/AlfaBuenaMaravillaOndaDinamitaEscuadronLobo.git
cd AlfaBuenaMaravillaOndaDinamitaEscuadronLobo
code .
flutter pub get
```

Comprueba Flutter:

```bash
flutter doctor
```

## Empezar una historia

Ejemplo: Sebastián comienza US01.

```bash
git fetch origin
git switch feature/us01-login-sebas
git pull origin feature/us01-login-sebas
git branch --show-current
```

Después, en el explorador de VS Code, abre:

```text
lib/features/auth/
```

y crea ahí los archivos necesarios. Por ejemplo:

```text
lib/features/auth/screens/login_screen.dart
lib/features/auth/controllers/login_controller.dart
lib/features/auth/services/auth_service.dart
```

Antes de escribir código, `git branch --show-current` debe mostrar exactamente la rama de tu historia.

## Mientras trabajas

Revisa frecuentemente:

```bash
git status
```

Antes de entregar:

```bash
dart format .
flutter analyze
flutter test
```

No subas código que no puedas explicar.

## Commits

Ejemplos:

```bash
git add .
git commit -m "feat(us03): mostrar catalogo de productos"
```

```bash
git commit -m "fix(us09): evitar productos duplicados en carrito"
```

Prefijos recomendados: `feat`, `fix`, `refactor`, `docs`, `test`, `chore`.

Evita commits como `cambios`, `final`, `ya quedo`, `prueba` o `cosas`.

## Subir tu trabajo

Desde tu propia rama:

```bash
git push -u origin NOMBRE-DE-TU-RAMA
```

Después de la primera vez basta con:

```bash
git push
```

## Entregar una historia

En GitHub abre un Pull Request con:

- **Base:** `develop`
- **Compare/head:** tu rama `feature/*`

Nunca abras una PR de una `feature/*` directamente hacia `main`.

Título recomendado:

```text
[US03] Visualizar catálogo general de productos
```

## Si `develop` avanzó mientras trabajabas

```bash
git fetch origin
git switch develop
git pull origin develop
git switch NOMBRE-DE-TU-RAMA
git merge develop
```

Si aparece un conflicto, no uses `--force` ni borres trabajo de otra persona.

Después ejecuta otra vez:

```bash
dart format .
flutter analyze
flutter test
```

## SOLID

- La UI no hace peticiones HTTP directamente.
- Los widgets se concentran en presentación e interacción.
- La lógica se separa de las vistas.
- Los servicios hablan con backend.
- Los repositorios encapsulan acceso a datos cuando tenga sentido.
- Evita clases gigantes que mezclen UI, red, estado y navegación.

Cada integrante debe poder justificar por qué separó su código de esa manera.

## APIs y backend intermediario

Flutter no consumirá proveedores externos directamente.

La aplicación se comunicará con el backend/Function del team. La URL base está centralizada en:

```text
lib/core/config/api_config.dart
```

No escribas URLs externas dentro de widgets, pantallas o controladores.

## Archivos compartidos: no tocarlos a lo loco

Especial cuidado con:

- `lib/main.dart`
- `lib/app/`
- `lib/core/`
- `pubspec.yaml`
- rutas/navegación global
- tema global

Si tu US necesita modificar uno, haz el cambio mínimo y explícalo en la PR.

## Prohibido

- `git push --force` o `git push -f`.
- desarrollar sobre `main`.
- desarrollar sobre `develop`.
- borrar trabajo de otro integrante.
- copiar una solución sin poder explicarla.
- subir secretos, tokens, contraseñas o claves.
- consumir APIs externas directamente desde una pantalla.

## Definition of Done

Una US sólo está terminada cuando:

- cumple criterios de aceptación;
- el integrante puede explicar su código;
- `dart format .` está aplicado;
- `flutter analyze` termina correctamente;
- `flutter test` termina correctamente;
- no rompe otras historias;
- no contiene secretos ni URLs externas dispersas;
- tiene commits descriptivos;
- tiene Pull Request hacia `develop`;
- la revisión acepta la integración.

## Sprint 2

Ventana de trabajo: **11 al 18 de septiembre de 2026**.

Las fechas específicas por historia y los puntos de control están definidos en el Sprint Planning del team.