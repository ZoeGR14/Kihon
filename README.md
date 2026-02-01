# Kihon - Sistema de Orientación Vocacional y Desarrollo Personal

![Java](https://img.shields.io/badge/Java-ED8B00?style=flat&logo=java&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-5.7-4479A1?style=flat&logo=mysql&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat&logo=docker&logoColor=white)
![Tomcat](https://img.shields.io/badge/Tomcat-9.0-F8DC75?style=flat&logo=apache-tomcat&logoColor=black)

## 📋 Descripción

**Kihon** es una aplicación web integral diseñada para ayudar a los usuarios a descubrir su perfil de personalidad, orientación vocacional y establecer metas académicas personalizadas. El sistema combina múltiples herramientas de evaluación psicométrica y orientación profesional.

### Características Principales

- **Test de Personalidad MBTI**: Determina el tipo de personalidad del usuario según el indicador Myers-Briggs (16 tipos de personalidad)
- **Test Vocacional**: Evalúa las inclinaciones profesionales en diferentes áreas:
   - Ingeniería y Ciencias Físico Matemáticas (ICFM)
   - Ciencias Sociales y Administrativas (CSA)
   - Ciencias Médico Biológicas (CMB)
   - Humanidades y Artes (HA)
- **Recomendación de Carreras**: Sugiere carreras universitarias basadas en el perfil MBTI y resultados vocacionales
- **Sistema de Metas Académicas**: Establece metas personalizadas según hábitos y métodos de estudio
- **Sistema de Soporte**: Módulo de gestión de reportes y FAQ para asistencia al usuario

## 🎯 Funcionalidades

### Módulo de Evaluación

1. **Test de Personalidad (MBTI)**
   - Clasifica a los usuarios en 16 tipos de personalidad
   - Categorías: Analistas, Diplomáticos, Centinelas, Exploradores
   - Proporciona descripciones detalladas, frases características y ejemplos de famosos

2. **Test Vocacional**
   - Evalúa afinidad con diferentes áreas de conocimiento
   - Genera puntuaciones específicas por área
   - Vincula resultados con carreras universitarias

3. **Sistema de Metas**
   - Cuestionario de 15 preguntas sobre hábitos y métodos de estudio
   - Clasificación por rangos (W: 15-25, X: 26-35, Y: 36-45)
   - 10 metas personalizadas según el perfil del estudiante

### Módulo de Recomendaciones

- **Carreras Universitarias**:
   - Base de datos de carreras de UNAM e IPN
   - Vinculación entre tipo MBTI y carreras recomendadas
   - Información detallada: objetivos, escuelas, enlaces oficiales

### Módulo de Soporte

- **Sistema de Reportes**: Gestión de incidencias y soporte técnico
- **FAQ Dinámico**: Preguntas frecuentes generadas automáticamente o manualmente
- **Roles de Usuario**: Sistema multi-rol (clientes, asistentes, gerentes, ingenieros, editores)

## 🏗️ Arquitectura

### Stack Tecnológico

- **Backend**: Java 7 con JavaEE Web API
- **Frontend**: JSP, HTML, CSS, JavaScript
- **Base de Datos**: MySQL 5.7
- **Servidor de Aplicaciones**: Apache Tomcat 9.0
- **Contenedorización**: Docker & Docker Compose
- **Gestión de Dependencias**: Maven 3

### Estructura del Proyecto

```
Kihon/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   ├── Controlador/      # Servlets y controladores
│   │   │   └── Modelo/            # Lógica de negocio y DAOs
│   │   └── webapp/
│   │       ├── MBTI/              # Módulo de test de personalidad
│   │       ├── Test-Vocacional/   # Módulo de test vocacional
│   │       ├── Habitos-Metas/     # Módulo de metas académicas
│   │       ├── Soporte/           # Sistema de soporte
│   │       └── infoGeneral/       # Información de carreras
│   └── test/
├── Database/
│   ├── 01-Schema.sql              # Esquema de base de datos
│   └── 02-Data.sql                # Datos iniciales
├── docker-compose.yml             # Configuración de servicios
├── Dockerfile                     # Imagen de la aplicación
└── pom.xml                        # Configuración de Maven
```

## 🚀 Instalación y Ejecución

### Prerequisitos

- Docker y Docker Compose instalados
- Puerto 8080 disponible

### Ejecución con Docker

1. **Clonar el repositorio**:

   ```bash
   git clone <repository-url>
   cd Kihon
   ```

2. **Construir y levantar los servicios**:

   ```bash
   docker-compose up --build
   ```

3. **Acceder a la aplicación**:
   ```
   http://localhost:8080
   ```

### Servicios del Contenedor

- **Base de Datos (MySQL 5.7)**
   - Puerto: 3306 (interno)
   - Usuario: root
   - Contraseña: n0m3l0
   - Base de datos: Kihon
   - Persistencia: `./mysql_data`

- **Aplicación Web (Tomcat 9.0)**
   - Puerto: 8080
   - Contexto: ROOT (/)

### Desarrollo Local (sin Docker)

1. **Configurar MySQL**:

   ```bash
   mysql -u root -p < Database/01-Schema.sql
   mysql -u root -p < Database/02-Data.sql
   ```

2. **Compilar el proyecto**:

   ```bash
   mvn clean package
   ```

3. **Desplegar en Tomcat**:
   - Copiar `target/Kihon-1.0-SNAPSHOT.war` a `webapps/` de Tomcat
   - Iniciar Tomcat

## 📊 Base de Datos

### Tablas Principales

#### Módulo de Usuarios

- `usuarios`: Gestión de usuarios y roles (6 tipos)

#### Módulo de Personalidad

- `tipos_perso`: 16 tipos de personalidad MBTI
- `personalidad_usu`: Relación usuario-MBTI
- `carrera_mbti`: Vinculación MBTI-Carreras

#### Módulo Vocacional

- `test_voc`: Resultados de tests vocacionales
- `carreras`: Catálogo de carreras
- `carreras_info`: Información detallada de carreras (UNAM/IPN)

#### Módulo de Metas

- `respuestas_habiMet`: Respuestas de cuestionario de hábitos
- `metasRango`: Metas por rango de puntuación
- `descripcionMetas`: Metas personalizadas del usuario

#### Módulo de Soporte

- `reportes`: Tickets de soporte
- `editor`: FAQ del sistema
- `trabajador_reporte`, `primer_encargado`, `escritor`: Gestión de reportes

## 👥 Roles de Usuario

| Tipo | Rol                        | Descripción                        |
| ---- | -------------------------- | ---------------------------------- |
| 0    | Cliente                    | Usuario estándar que realiza tests |
| 1    | Asistente                  | Soporte de primer nivel            |
| 2    | Gerente de Soporte         | Supervisión de casos               |
| 3    | Gerente de Mantenimiento   | Gestión de sistema                 |
| 4    | Ingeniero de Soporte       | Soporte técnico avanzado           |
| 5    | Ingeniero de Mantenimiento | Mantenimiento del sistema          |
| 6    | Editor                     | Gestión de contenido y FAQ         |

## 🎓 Áreas de Conocimiento

El sistema evalúa y recomienda carreras en 4 áreas principales:

1. **Ingeniería y Ciencias Físico Matemáticas (ICFM)**
2. **Ciencias Médico Biológicas (CMB)**
3. **Ciencias Sociales y Administrativas (CSA)**
4. **Humanidades y de las Artes (HA)**

## 📝 Flujo de Usuario

1. **Registro/Inicio de Sesión**
2. **Realizar Test de Personalidad MBTI** → Obtiene tipo de personalidad
3. **Realizar Test Vocacional** → Obtiene puntuaciones por área
4. **Ver Carreras Recomendadas** → Basadas en MBTI y test vocacional
5. **Completar Cuestionario de Hábitos** → 15 preguntas
6. **Obtener Metas Personalizadas** → 10 metas según perfil
7. **Acceder a Soporte** → Sistema de reportes y FAQ

## 🔧 Configuración

### Variables de Entorno

Las credenciales de la base de datos se configuran en `docker-compose.yml`:

```yaml
MYSQL_ROOT_PASSWORD: n0m3l0
MYSQL_DATABASE: Kihon
```

### Modificar Puerto de la Aplicación

Editar en `docker-compose.yml`:

```yaml
ports:
   - "PUERTO_HOST:8080"
```

## 🛠️ Mantenimiento

### Backup de Base de Datos

```bash
docker exec mysql-db-kihon mysqldump -u root -pn0m3l0 Kihon > backup.sql
```

### Restaurar Base de Datos

```bash
docker exec -i mysql-db-kihon mysql -u root -pn0m3l0 Kihon < backup.sql
```

### Ver Logs

```bash
docker-compose logs -f app
docker-compose logs -f database
```

## 📦 Dependencias

- **JSTL 1.2**: Biblioteca de etiquetas JSP
- **MySQL Connector 8.0.30**: Driver JDBC para MySQL
- **Jakarta Servlet JSP JSTL API 2.0.0**: API de JSP
- **JavaEE Web API 7.0**: API empresarial de Java

## 🤝 Contribución

1. Fork del proyecto
2. Crear rama de feature (`git checkout -b feature/NuevaCaracteristica`)
3. Commit de cambios (`git commit -m 'Agregar nueva característica'`)
4. Push a la rama (`git push origin feature/NuevaCaracteristica`)
5. Abrir Pull Request

## 📄 Licencia

Este proyecto es de código abierto y está disponible bajo la licencia que corresponda.

## 📧 Contacto

Para soporte o consultas, utilizar el módulo de reportes dentro de la aplicación.

---

**Desarrollado con ❤️ para ayudar en la orientación vocacional y desarrollo personal**
