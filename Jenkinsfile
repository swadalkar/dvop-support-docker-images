pipeline {
    agent { node { label 'azure-vm' } }
    environment {

    }
    stages {
        stage('Pull-base-image') {
            steps {
                 withCredentials([azureServicePrincipal('azureserviceprincipallatest')]) {
                 sh 'az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID' 
               }
            }
        }
    }
}