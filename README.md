1. Docker
      Created a Dockerfile to containerize the application.
      Build and test the Docker image locally.
2. Terraform (Infrastructure as Code)
      Define infrastructure in main.tf:
      VPC, IAM roles, EC2 instance with Jenkins, etc.
      Provisioned AWS infrastructure using terraform init, terraform plan, and terraform apply.
3. DockerHub
      Create a DockerHub repository.
     Push the built Docker image to DockerHub. throught jenkines
4. Kubernetes (EKS)
      Setup AWS EKS cluster using Terraform.
      Confirm cluster connectivity with kubectl.
      Write deployment.yaml and service.yaml.
      Deploy workloads to EKS using Jenkins pipeline.
5. Version Control (GitHub)
     Push source code to GitHub repository.
se CLI commands (git init, git add, git commit, git push).
6. Jenkins (CI/CD)
     Install Jenkins on EC2 and configure required plugins:
     Docker, Git, Kubernetes, Pipeline.
     Integrate GitHub with Jenkins using Webhooks for auto-build on commit.
     Create a declarative pipeline to:
     Build → Push Docker Image → Deploy to Kubernetes.
