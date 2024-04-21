pipeline {
    agent { node { label 'azure-vm' } }
    stages {
        stage('build-image') {
            steps {
                 withCredentials([azureServicePrincipal('azureserviceprincipallatest')]) {
                 sh 'az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID' 
                 sh 'docker build -t tmp . '
                 sh 'docker tag tmp dvopsimages.azurecr.io/base/dvopssupport:v2'
               }
            }
        }
        stage('push-image') {
           steps {
                 withCredentials([azureServicePrincipal('azureserviceprincipallatest')]) {
                 sh 'docker push dvopsimages.azurecr.io/base/dvopssupport:v2'
               }
            }
            }
        }
    }