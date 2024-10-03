
# Flutter Database Connection Manager - Demo

## Description

This project is a **demo application** built with Flutter to manage database connections and visualize the status of connected users in real-time. The app is designed to showcase a modern and fluid user interface with a strong focus on usability and visual design.

The main goal of this demo is to highlight the front-end capabilities for managing connections to multiple users, displaying detailed user information, and providing a smooth and intuitive experience for database connection management.

## Features

- **Database Connection Management**: The app allows users to remove connections on the database.
  
- **Real-time User Monitoring**: The dashboard provides a live view of users connected to the database, enabling efficient monitoring.

- **Clean and Modern Design**: The interface follows modern UX/UI principles, ensuring a pleasant and easy-to-navigate user experience. The design focuses on soft colors and well-structured layouts for enhanced readability and reduced visual fatigue.

- **Dynamic Interactions**: Smooth animations are used for transitions between screens and components, offering a fluid and engaging experience.

## Installation

Follow these steps to install and run the project locally:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/OsmanyCruz/Database_Monitor.git
   cd Database_Monitor
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the application:**
   ```bash
   flutter run
   ```

## Project Structure

The project is structured following best practices in Flutter, with a clear separation between logic and presentation:

- **lib/**
  - `main.dart`: Main entry point of the application.
  - `models/`: Data models used in the application, such as `Connection` and `User`.
  - `pages/`: Main pages, including the connection management screen and the user Login.
  - `widgets/`: Reusable components such as connection cards and user lists.

## Technologies Used

- **Flutter**: Framework for building the user interface.
- **Dart**: Programming language used for logic development.
- **Material Design**: Design standards used for the graphical interface.

## Screenshots

### Home Screen
![Home](assets/screenshots/screen1.png)

### Login Screen
![Connections](assets/screenshots/screen2.png)

### Collapsed Home Screen
![Users](assets/screenshots/screen3.png)

## Contributions

This demo is open-source, and any contributions are welcome. If you would like to contribute, follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/new-feature`).
3. Commit your changes (`git commit -m 'Add new feature'`).
4. Push to the branch (`git push origin feature/new-feature`).
5. Open a Pull Request.
