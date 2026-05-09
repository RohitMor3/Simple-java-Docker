# ☕ Java Dockerized Application

A simple **Java application** containerized using **Docker** to demonstrate how Java applications can be compiled and executed inside a Docker container using a custom Dockerfile.

<p align="center">
  <img src="https://img.shields.io/badge/Java-17-red?style=for-the-badge&logo=openjdk">
  <img src="https://img.shields.io/badge/Docker-Containerized-blue?style=for-the-badge&logo=docker">
  <img src="https://img.shields.io/badge/JDK-Eclipse%20Temurin-orange?style=for-the-badge">
</p>

---

## ✨ Features

- Simple Java application
- Fully Dockerized environment
- Uses Eclipse Temurin JDK 17 image
- Lightweight and beginner-friendly
- Demonstrates Dockerfile workflow
- Easy to build and run

---

## 🚀 Tech Stack

| Technology | Purpose |
|------------|---------|
| Java | Core Programming Language |
| Docker | Containerization |
| Eclipse Temurin JDK 17 | Java Runtime Environment |

---

## Project Structure

```bash
java-docker-app/
│
├── Dockerfile
├── README.md
└── src/
    └── Main.java
```

---

## Why & How It Works

The Docker container performs the following steps:

1. Pulls the Java base image
2. Creates a working directory inside the container
3. Copies source code into the container
4. Compiles the Java application
5. Runs the compiled Java program

---

## Java Code

```java
import java.util.Date;

public class Main {
    public static void main(String[] args) {
        Date currentDate = new Date();
        System.out.println("Hello, Docker! Current date: " + currentDate);
    }
}
```

---

## 🐳 Dockerfile

```dockerfile
# Pull base image with Java installed
FROM eclipse-temurin:17-jdk

# Create working directory
WORKDIR /app

# Copy source code to container
COPY . .

# Compile Java code
RUN javac src/Main.java

# Run Java application
CMD ["java", "-cp", "src", "Main"]
```

---

## ⚙️ Installation & Usage

### Clone the Repository

```bash
git clone https://github.com/your-username/java-docker-app.git
```

### Move into Project Directory

```bash
cd java-docker-app
```

### Build Docker Image

```bash
docker build -t java-docker-app .
```

### Run Docker Container

```bash
docker run java-docker-app
```

---

## 📸 Expected Output

```bash
Hello, Docker! Current date: Tue May 06 12:34:56 UTC 2026
```

---

## 🐍 Requirements

- Docker Desktop Installed
- Java 17 (optional if running locally)

---

## 📌 Learning Objectives

- Understand Docker basics
- Learn Dockerfile instructions
- Containerize Java applications
- Build and run Docker images
- Work with Java inside containers

---

## 🤝 Contributing

Contributions are welcome!

Feel free to fork this repository and submit a pull request.

---

## 📜 License

This project is licensed under the MIT License.

---

## ⭐ Support

If you liked this project, consider giving it a ⭐ on GitHub!

---

<p align="center">
  Made with ❤️ using Java & Docker
</p>