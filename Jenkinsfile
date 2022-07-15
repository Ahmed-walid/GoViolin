pipeline{
  
  agent any
  
  stages{
  
    stage("checking the code"){
    
      steps{
      
        checkout([$class: 'GitSCM', branches: [[name: '**']], extensions: [], userRemoteConfigs: [[credentialsId: 'GitHub', url: 'https://github.com/Ahmed-walid/GoViolin']]])
        echo "Checking the code out"
      
      }
    
    }
  
  
  }

}
