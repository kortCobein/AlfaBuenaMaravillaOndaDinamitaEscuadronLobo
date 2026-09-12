# Guía de contribución — Sprint 2

Este repositorio usa un flujo simple para que cinco personas puedan trabajar en paralelo sin romper la base Flutter.

## Herramientas comunes

Todos trabajaremos con:

- Visual Studio Code
- Flutter + Dart
- Git
- GitHub

Antes de empezar, en VS Code instala las extensiones recomendadas cuando aparezca el aviso del repositorio.

## Regla principal

**Nadie desarrolla directamente en `main` ni en `develop`.**

Cada historia de usuario ya tiene una rama `feature/*` asignada. El trabajo se hace únicamente en esa rama y se entrega mediante Pull Request hacia `develop`.

`main` representa la versión estable. `develop` representa la integración del sprint.

## Asignaciones

| Integrante | Épica | Historias | Ramas |
|---|---|---|---|
| Sebastián Mendoza Montoya | Épica 1 · Autenticación | US01, US02 | `feature/us01-login-sebas`, `feature/us02-logout-sebas` |
| Leonel Hernández Trejo | Épica 2 · Catálogo | US03, US04, US05 | `feature/us03-catalogo-leonel`, `feature/us04-filtros-leonel`, `feature/us05-detalle-producto-leonel` |
| Kurt Cobain Vazquez Sanchez | Épica 3 · Inventario | US06, US07, US08 | `feature/us06-agregar-producto-cobain`, `feature/us07-editar-producto-cobain`, `feature/us08-eliminar-producto-cobain` |
| Angel Ariel Escobedo Lugo | Épica 4 · Compras | US09, US10 | `feature/us09-agregar-carrito-ariel`, `feature/us10-gestionar-carrito-ariel` |
| Julio Cesar Ramírez Vela | Épica 5 · Auditorías | US11, US12 | `feature/us11-listar-usuarios-jc`, `feature/us12-historico-carritos-jc` |

## Primera vez en una computadora

Abre una terminal en VS Code y ejecuta:

```bash
git clone https://github.com/kortCobein/AlfaBuenaMaravillaOndaDinamitaEscuadronLobo.git
cd AlfaBuenaMaravillaOndaDinamitaEscuadronLobo
code .
flutter pub get
```

Comprueba que Flutter esté disponible:

```bash
flutter doctor
```

## Empezar una historia

Ejemplo: Sebastián va a trabajar US01.

```bash
git fetch origin
git switch feature/us01-login-sebas
git pull origin feature/us01-login-sebas
```

Antes de escribir código, confirma la rama actual:

```bash
git branch --show-current
```

Debe mostrar exactamente la rama de la historia que vas a desarrollar.

## Mientras trabajas

Haz cambios pequeños y comprensibles. Revisa frecuentemente:

```bash
git status
```

Antes de cada entrega local:

```bash
dart format .
flutter analyze
flutter test
```

No subas código que no puedas explicar.

## Commits

Usaremos mensajes breves y descriptivos. Ejemplos:

```bash
git add .
git commit -m "feat(us03): mostrar catalogo de productos"
```

```bash
git commit -m "fix(us09): evitar productos duplicados en carrito"
```

Prefijos recomendados:

- `feat`: funcionalidad nueva.
- `fix`: corrección.
- `refactor`: reorganización sin cambiar comportamiento.
- `docs`: documentación.
- `test`: pruebas.
- `chore`: configuración o mantenimiento.

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

Usa como título:

```text
[US03] Visualizar catálogo general de productos
```

La plantilla de Pull Request te pedirá criterios de aceptación, pruebas realizadas, aplicación de SOLID y una confirmación de que puedes explicar el código.

## Si `develop` avanzó mientras trabajabas

Antes de terminar tu historia, integra los cambios recientes:

```bash
git fetch origin
git switch develop
git pull origin develop
git switch NOMBRE-DE-TU-RAMA
git merge develop
```

Si aparece un conflicto, **no lo resuelvas a ciegas y no uses `--force`**. Coordínalo antes de subir cambios.

Después vuelve a ejecutar:

```bash
dart format .
flutter analyze
flutter test
```

## SOLID

SOLID se aplicará con criterio, no como cantidad de carpetas.

- La UI no debe hacer peticiones HTTP directamente.
- Los widgets se concentran en presentación e interacción.
- La lógica de datos se separa de las vistas.
- Los módulos deben depender de contratos o responsabilidades claras cuando sea útil.
- Evita clases gigantes con autenticación, red, navegación y UI mezcladas.

Cada integrante debe poder justificar dónde aplicó separación de responsabilidades y por qué.

## APIs y backend intermediario

Flutter no consumirá directamente proveedores externos. La aplicación se comunicará con el backend/Function del team mediante una URL base centralizada.

No escribas URLs externas dentro de widgets, pantallas ni controladores.

Cuando se defina el endpoint del backend, deberá existir un único punto de configuración para cambiar la URL sin modificar cada módulo.

## Archivos sensibles al conflicto

Ten especial cuidado con:

- `lib/main.dart`
- `pubspec.yaml`
- navegación/rutas compartidas
- configuración global de tema
- archivos de red compartidos

Si tu historia necesita modificar uno de estos archivos, mantenlo como un cambio pequeño y explícalo en la PR.

## Prohibido

- `git push --force` o `git push -f`.
- desarrollar sobre `main`.
- desarrollar sobre `develop`.
- borrar trabajo de otro integrante para resolver un conflicto.
- copiar una solución sin poder explicarla.
- subir secretos, tokens, contraseñas o claves.
- consumir APIs externas directamente desde una pantalla.

## Definition of Done

Una US sólo está terminada cuando:

- cumple sus criterios de aceptación;
- el integrante puede explicar el código completo que agregó;
- `dart format .` quedó aplicado;
- `flutter analyze` termina correctamente;
- `flutter test` termina correctamente;
- no rompe otras historias;
- no contiene secretos ni URLs externas dispersas;
- tiene commits descriptivos;
- tiene Pull Request hacia `develop`;
- la revisión del sprint acepta la integración.

## Sprint 2

Ventana de trabajo: **11 al 18 de septiembre de 2026**.

Las fechas específicas por historia y los puntos de control están definidos en el Sprint Planning del team.