pipeline{
    agent {
	label 'Dev'
	}
    stages{
        stage('Build-OS-Details'){
            steps{
                sh  '''
                    cat /etc/os-release
                '''
            }            
        }
        stage('Build-Memory-details'){
            steps{
                sh '''
                echo "Memory details: " 
		free
                '''
            }
        }
        stage('Build-cpu-details'){
            steps{
                sh '''
                echo "Cpu details: " 
                lscpu
                '''
            }
        }
        stage('Build-Private-ip'){
            steps{
                sh '''
                echo "Private IP details: " 
                hostname -I
                '''
            }  
        }
        stage('Build-cal'){
            steps{
                sh '''
                echo "Building the cal: " 
                date
                '''
            }
        }    
    }
}
