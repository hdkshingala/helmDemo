pipeline {
    agent any

    environment {
	KUBECONFIG = credentials('kindConfig')
    }

    stages {
        stage('Build') {
            steps {
                sh "helm dependency update ./exercise"

		sh "helm lint ./exercise"

		sh "helm package ./exercise"

		sh "helm install mychart ./exercise"
            }

        }
    }
}
