#  Automated Web Application Deployment using Jenkins & Docker Pipeline

This project demonstrates a production-style CI/CD pipeline using Jenkins and Docker. Whenever a developer pushes changes to the `main` branch, Jenkins automatically triggers a multi-stage pipeline to build, test, and deploy the application.

##  Tech Stack & Tools
- **Version Control:** Git & GitHub
- **CI/CD Automation:** Jenkins (Declarative Pipeline)
- **Containerization:** Docker
- **Web Server:** Nginx (Alpine)

##  Pipeline Stages
1. **Checkout Code:** Pulls latest source code from GitHub.
2. **Lint/Validation:** Validates project configurations and files.
3. **Build:** Compiles application code into a light-weight Docker image.
4. **Deploy:** Stops existing containers and deploys the new version on port `8080`.

## 🚀 How to Run Locally

### Option 1: Quick Run via Docker Hub (No build required)
1. Run container directly:
   `docker run -d -p 8080:80 abdulraheem774/my-web-app:latest`

### Option 2: Build & Run from Source Code
1. Clone the repository: `git clone https://github.com/abdulraheem774/devops-jenkins-project`
2. Navigate to project directory: `cd devops-jenkins-project`
3. Build Docker Image: `docker build -t my-web-app .`
4. Run Container: `docker run -d -p 8080:80 my-web-app`
