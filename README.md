# MonAgendaPersonnel

A JavaFX desktop application for managing personal and professional events through an interactive calendar.

## Overview

MonAgendaPersonnel is a desktop application developed using Java 17 and JavaFX. It allows users to organize their daily activities, manage events, and visualize their schedules through an interactive monthly calendar.

## Features

- Create, update, and delete events.
- Search events by title, date, category, and priority.
- Filter events (All, Today, Upcoming, Important).
- Navigate through an interactive monthly calendar.
- Visual priority indicators.
- Automatic daily event reminders.
- Real-time form validation.

## Technologies

- Java 17
- JavaFX
- Oracle Database
- JDBC
- SQL
- Apache Ant
- NetBeans IDE

## Architecture

The application follows a three-layer architecture:

- **Presentation:** JavaFX graphical interface.
- **Business Logic:** Event management operations.
- **Data Access:** Oracle Database connectivity using JDBC.

## Database Configuration

The application uses environment variables to configure the Oracle Database connection.

Configure the following environment variables on your system:

- `DB_URL`
- `DB_USER`
- `DB_PASSWORD`

Do not commit database credentials to the repository.

The Oracle JDBC driver (`ojdbc11.jar`) must be added to the project's libraries before running the application.

## Installation and Execution

1. Clone or download this repository.
2. Open the project in NetBeans IDE.
3. Add the Oracle JDBC driver (`ojdbc11.jar`) to the project libraries.
4. Configure the database environment variables.
5. Set up the required Oracle database and `EVENEMENTS` table.
6. Build and run the project.

## Contributors

- Fatma Ben Hamouda
- Nour Almia

## Project Version

Version 2.0 — May 2026