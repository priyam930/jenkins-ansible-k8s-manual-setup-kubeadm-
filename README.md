# jenkins-ansible-k8s-manual-setup-kubeadm-
# 🚀 Deploy Dockerized Jenkins and Ansible on Kubernetes Cluster (Manual kubeadm Setup)

This project demonstrates how to **manually set up a Kubernetes cluster using kubeadm** and deploy **Dockerized Jenkins and Ansible pods inside the cluster.**  
The Jenkins server triggers Ansible playbooks inside the Kubernetes Ansible pod without the need for external inventory or SSH.

---

## 📖 Medium Blog  
Detailed step-by-step guide is available here 👉 [Read the Full Blog on Medium](https://medium.com/@priyamsanodiya340/deploy-dockerized-jenkins-and-ansible-on-kubernetes-cluster-manual-kubeadm-setup-fec7187e4a66)

---

## 🛠️ Technologies Used
- Kubernetes (kubeadm setup)
- Jenkins
- Ansible
- Docker
- YAML
- Groovy (Jenkins Pipeline)

---

## 📂 Project Structure

```text
.
├── ansible-deployment.yaml
├── Dockerfile (for Ansible)
├── jenkins-deployment.yaml
├── jenkins-pv.yaml
├── jenkins-service.yaml
├── Jenkinsfile
├── ansible/
│   └── deploy.yml (Ansible playbook)
└── README.md
🚀 How to Run the Project
1. Setup Kubernetes Cluster using kubeadm
Follow this 👉 https://medium.com/@priyamsanodiya340/setting-up-a-kubernetes-multi-node-cluster-on-aws-a-step-by-step-guide-dd6cc010b625

2. Deploy Jenkins
bash
Copy
Edit
kubectl apply -f jenkins-pv.yaml
kubectl apply -f jenkins-deployment.yaml
kubectl apply -f jenkins-service.yaml
3. Deploy Ansible
bash
Copy
Edit
docker build -t <your-dockerhub-username>/ansible:latest .
docker push <your-dockerhub-username>/ansible:latest
kubectl apply -f ansible-deployment.yaml
4. Configure Jenkins Pipeline
Use the provided Jenkinsfile as the pipeline script.

5. Run Jenkins Pipeline
Jenkins will trigger the Ansible playbook inside the Ansible pod using kubectl exec.


📂 Source Code
All deployment files, Dockerfiles, Jenkins pipelines, and Ansible playbooks are available in this repository.

✨ Key Highlights
✔️ Kubernetes cluster manually setup (kubeadm)

✔️ Jenkins deployed inside Kubernetes pod

✔️ Ansible running inside Kubernetes pod

✔️ Localhost-based Ansible execution

✔️ CI/CD integration using Jenkins and Kubernetes

🙏 Credits
Kubernetes kubeadm guide by priyam sanodiya

📬 Contact
If you have any questions or suggestions, feel free to connect:
LinkedIn 

📢 Follow Me on Medium
👉 @priyamsanodiya340

