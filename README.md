<div align="center">

<img src="docs/readme-equipo-alfa.svg" alt="Equipo Alfa Buena Maravilla Onda Dinamita Escuadrón Lobo" width="100%" />

<br>

<img src="https://img.shields.io/badge/UTSJR-Universidad%20Tecnológica-00245A?style=for-the-badge" alt="UTSJR" />
<img src="https://img.shields.io/badge/Equipo-Alfa%20Buena%20Mara-009D81?style=for-the-badge" alt="Equipo Alfa" />
<img src="https://img.shields.io/badge/Estado-En%20desarrollo-2ea44f?style=for-the-badge" alt="Estado" />

<br><br>

<img src="https://img.shields.io/badge/Flutter-02569B?style=flat-square&logo=flutter&logoColor=white" alt="Flutter" />
<img src="https://img.shields.io/badge/Dart-0175C2?style=flat-square&logo=dart&logoColor=white" alt="Dart" />
<img src="https://img.shields.io/badge/Git-F05032?style=flat-square&logo=git&logoColor=white" alt="Git" />
<img src="https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=github&logoColor=white" alt="GitHub" />
<img src="https://img.shields.io/badge/SOLID-Arquitectura-7B61FF?style=flat-square" alt="SOLID" />

<br>

> **Nueva implementación. Nueva metodología. Mismos requerimientos, una arquitectura completamente nueva en Flutter.**

</div>

---

## 🎓 Datos académicos

<div align="center">

| | |
|:--|:--|
| 🏛️ **Universidad** | Universidad Tecnológica de San Juan del Río |
| 🎓 **Carrera** | Ingeniería en Desarrollo de Software Multiplataforma |
| 📱 **Materia** | Desarrollo de Aplicaciones Móviles |
| 📚 **Cuatrimestre** | 4.º Cuatrimestre |
| 🧩 **Unidad** | Unidad 1 |
| 👥 **Grupo** | DSM1SM-25ERS |
| 👨‍🏫 **Docente** | Othón Guzmán Docurro |
| 🐺 **Equipo** | Alfa Buena Maravilla Onda Dinamita Escuadrón Lobo |

</div>

---

## 👥 Escuadrón

<div align="center">

<table>
<tr>
<td align="center" width="20%"><b>Angel Ariel<br>Escobedo Lugo</b><br><sub>Épica 4 · Compras</sub></td>
<td align="center" width="20%"><b>Julio Cesar<br>Ramírez Vela</b><br><sub>Épica 5 · Auditorías</sub></td>
<td align="center" width="20%"><b>Sebastián<br>Mendoza Montoya</b><br><sub>Épica 1 · Autenticación</sub></td>
<td align="center" width="20%"><b>Leonel<br>Hernández Trejo</b><br><sub>Épica 2 · Catálogo</sub></td>
<td align="center" width="20%"><b>Kurt Cobain<br>Vazquez Sanchez</b><br><sub>Épica 3 · Inventario</sub></td>
</tr>
</table>

**5 integrantes · 5 épicas · 12 historias de usuario · 1 base Flutter compartida**

</div>

---

## 🚀 El proyecto

Este repositorio representa una **nueva implementación desde cero en Flutter** de las historias de usuario del proyecto de Desarrollo de Aplicaciones Móviles.

El proyecto anterior de **Equipo SixSeven** se utilizó únicamente como referencia documental para recuperar los requerimientos de **US01 a US12**. No se reutilizó su aplicación Android, clases Kotlin, Gradle, recursos ni arquitectura.

Esta versión se desarrollará con una base común en **Flutter + Dart**, principios **SOLID**, trabajo colaborativo mediante ramas y Pull Requests, y una capa de comunicación desacoplada para evitar dependencias directas con APIs externas.

---

# 📋 Historias de usuario y responsables

## 🔐 Épica 1 · Autenticación

**Responsable: Sebastián Mendoza Montoya · Sebas**

- [US01 · Login y asignación local de perfiles](docs/US01-login-y-asignacion-local-de-perfiles.md)
- [US02 · Cierre de sesión y limpieza de credenciales](docs/US02-cierre-de-sesion-y-limpieza-de-credenciales.md)

Ramas asignadas:

```text
feature/us01-login-sebas
feature/us02-logout-sebas
```

## 🛍️ Épica 2 · Catálogo

**Responsable: Leonel Hernández Trejo · Leonel**

- [US03 · Visualizar catálogo general de productos](docs/US03-visualizar-catalogo-general-de-productos.md)
- [US04 · Filtrar productos por categoría](docs/US04-filtrar-productos-por-categoria.md)
- [US05 · Ver detalle del producto con interfaz dinámica](docs/US05-ver-detalle-del-producto-con-interfaz-dinamica.md)

Ramas asignadas:

```text
feature/us03-catalogo-leonel
feature/us04-filtros-leonel
feature/us05-detalle-producto-leonel
```

## 📦 Épica 3 · Inventario

**Responsable: Kurt Cobain Vazquez Sanchez · Cobain**

- [US06 · Agregar nuevo producto al catálogo](docs/US06-agregar-nuevo-producto-al-catalogo.md)
- [US07 · Editar información de un artículo](docs/US07-editar-informacion-de-un-articulo.md)
- [US08 · Eliminar producto del sistema](docs/US08-eliminar-producto-del-sistema.md)

Ramas asignadas:

```text
feature/us06-agregar-producto-cobain
feature/us07-editar-producto-cobain
feature/us08-eliminar-producto-cobain
```

## 🛒 Épica 4 · Compras

**Responsable: Angel Ariel Escobedo Lugo · Ariel**

- [US09 · Añadir artículos al carrito personal](docs/US09-anadir-articulos-al-carrito-personal.md)
- [US10 · Visualizar, modificar o eliminar artículos del carrito](docs/US10-visualizar-modificar-o-eliminar-articulos-del-carrito.md)

Ramas asignadas:

```text
feature/us09-agregar-carrito-ariel
feature/us10-gestionar-carrito-ariel
```

## 🔎 Épica 5 · Auditorías

**Responsable: Julio Cesar Ramírez Vela · JC**

- [US11 · Listar todos los usuarios registrados](docs/US11-listar-todos-los-usuarios-registrados.md)
- [US12 · Visualizar histórico de carritos globales](docs/US12-visualizar-historico-de-carritos-globales.md)

Ramas asignadas:

```text
feature/us11-listar-usuarios-jc
feature/us12-historico-carritos-jc
```

---

## 🌿 Flujo de ramas

```text
main
└── develop
    ├── feature/us01-login-sebas
    ├── feature/us02-logout-sebas
    ├── feature/us03-catalogo-leonel
    ├── feature/us04-filtros-leonel
    ├── feature/us05-detalle-producto-leonel
    ├── feature/us06-agregar-producto-cobain
    ├── feature/us07-editar-producto-cobain
    ├── feature/us08-eliminar-producto-cobain
    ├── feature/us09-agregar-carrito-ariel
    ├── feature/us10-gestionar-carrito-ariel
    ├── feature/us11-listar-usuarios-jc
    └── feature/us12-historico-carritos-jc
```

- `main`: versión estable del proyecto.
- `develop`: integración del sprint.
- `feature/*`: desarrollo aislado de cada historia.
- Las historias terminadas se integrarán mediante **Pull Request hacia `develop`**.
- `develop` llegará a `main` únicamente cuando la integración esté revisada y estable.

---

## 🧱 Arquitectura acordada

El proyecto aplicará principios **SOLID** con una estructura comprensible y justificable. El objetivo no es añadir capas innecesarias, sino separar responsabilidades para que cada integrante pueda explicar completamente su implementación.

```text
UI / Widgets
     ↓
Estado / Controlador
     ↓
Repositorio
     ↓
Servicio
     ↓
ApiClient
     ↓
ApiConfig.baseUrl
     ↓
Backend / Function del equipo
     ↓
API externa
```

### Regla de comunicación remota

La aplicación Flutter **no consumirá APIs externas directamente**. Todas las solicitudes deberán pasar por el backend o función intermediaria definida por el equipo.

La URL base deberá estar centralizada en un único archivo de configuración. De esta forma, cambiar de backend o proveedor no obligará a modificar cada módulo funcional.

---

## 🧰 Stack

<div align="center">

| Tecnología | Uso dentro del proyecto |
|:--:|:--|
| **Flutter** | Framework principal |
| **Dart** | Lenguaje de desarrollo |
| **Backend / Function** | Capa intermediaria para comunicación remota |
| **API externa** | Fuente de datos detrás del backend |
| **Git** | Control de versiones |
| **GitHub** | Colaboración, ramas y Pull Requests |
| **SOLID** | Principios de diseño y separación de responsabilidades |

</div>

---

## 🗂️ Organización documental

```text
AlfaBuenaMaravillaOndaDinamitaEscuadronLobo/
│
├── android/
├── lib/
├── test/
├── pubspec.yaml
├── pubspec.lock
├── README.md
│
└── docs/
    ├── readme-equipo-alfa.svg
    ├── US01-...
    ├── US02-...
    ├── US03-...
    ├── ...
    └── US12-...
```

`README.md` funciona como **índice único del proyecto**. Los archivos dentro de `docs/` contienen los requerimientos detallados de cada historia de usuario.

---

## ✅ Reglas generales de desarrollo

- Cada integrante desarrolla únicamente sobre la rama correspondiente a su historia.
- Cada historia debe cumplir sus criterios de aceptación.
- El código debe aplicar SOLID cuando corresponda y mantener responsabilidades claras.
- Cada integrante debe ser capaz de explicar completamente el código que entrega.
- Se permite creatividad visual y técnica siempre que no se alteren los requerimientos funcionales.
- No se consumirán APIs externas directamente desde widgets ni módulos funcionales.
- Los commits deben ser pequeños y descriptivos.
- Ninguna `feature/*` se integra directamente en `main`.
- Toda integración pasa primero por `develop` mediante Pull Request.
- Una historia no se considera terminada si rompe otra parte del proyecto.

---

<div align="center">

### 🐺 EQUIPO ALFA BUENA MARAVILLA ONDA DINAMITA ESCUADRÓN LOBO

**Universidad Tecnológica de San Juan del Río**  
Ingeniería en Desarrollo de Software Multiplataforma · 4.º Cuatrimestre

`Flutter` · `Dart` · `SOLID` · `Git` · `GitHub`

<br>

**Construir por módulos. Integrar con control. Entender lo que escribimos.**

</div>
