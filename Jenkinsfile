pipeline{
  agent any

  stages{

   stage('Downloading Dependencies'){
     steps{
       sh '''
          npm install
       '''
     }
   }

   stage('Preparing Artifacts'){
     steps{
       sh '''
       zip -r todo.zip node_modules server.js
       '''
     }
   }
   stage('Upload Artifacts'){
     steps{
       sh '''
       curl -f -v -u admin:admin123 --upload-file todo.zip http://192.168.0.84:8081/repository/todo/todo.zip
       '''
     }
   }
  }
}