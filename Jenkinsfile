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

     post{

      success{

       archiveArtifacts artifacts: '/java-app/target/*.jar', fingerprint: true

      }

     }

    }

    stage('Test'){

     steps{
      sh '''
          ./jenkins/test/mvn.sh mvn test
         '''
     }

     post{

      success{

       junit 'java-app/target/surefire-reports/*.xml'

      }

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
