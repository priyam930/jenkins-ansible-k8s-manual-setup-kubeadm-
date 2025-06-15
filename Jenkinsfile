pipeline {
    agent any
    stages {
        stage('Check Ansible Pod') {
            steps {
                echo "Checking Ansible Pod Status..."
                sh '''
                kubectl get pods -l app=ansible
                '''
            }
        }
        stage('Run Ansible Playbook Locally') {
            steps {
                echo "Triggering Ansible Playbook on Localhost..."
                sh '''
                ANSIBLE_POD=$(kubectl get pod -l app=ansible -o jsonpath="{.items[0].metadata.name}")
                kubectl exec -it $ANSIBLE_POD -- ansible-playbook -i localhost, /ansible/deploy.yml --connection=local
                '''
            }
        }
    }
    post {
        always {
            echo 'Pipeline Execution Completed!'
        }
    }
