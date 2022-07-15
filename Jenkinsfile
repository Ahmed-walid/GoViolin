pipeline{
  
  agent any
  
  stages{
  
    stage("checking the code"){
      steps{
        checkout([$class: 'GitSCM', branches: [[name: '**']], extensions: [], userRemoteConfigs: [[credentialsId: 'GitHub', url: 'https://github.com/Ahmed-walid/GoViolin']]])
        echo "Checking the code out"
      }
    }
    
    stage("building the image"){
      steps{
        sh 'docker build -t awaleed/Goviolin:wwe .'
      }
    }
    
    stage("pushing the image"){
    
      steps{
      
        withCredentials([string(credentialsId:'dockerhub-pwd',variable:'dockerhubpwd')]){
        
          sh 'docker login -u awaleed -p ${dockerhubpwd}'
          sh 'docker push awaleed/Goviolin:wwe'
        
        }
      
      }
    
    }
  
  
  }

}
