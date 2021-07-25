pipeline{

 agent any
 
 environment{
  PASS = credentials('docker-hub-pass')
 } 

  stages{

    stage('Build'){
     
     steps{
      sh '''
           ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
           ./jenkins/build/build.sh 1 
         '''
     } 

    }

    stage('Test'){

     steps{
      sh '''
          ./jenkins/test/mvn.sh mvn test
         '''
     }

    }

   stage('Push'){

     steps{
      sh '''
          ./jenkins/push/push.sh
         '''
     }

    }


   stage('Deploy'){

     steps{
      sh '''
          ./jenkins/deploy/deploy.sh
         '''
     }

    }


  }


}
