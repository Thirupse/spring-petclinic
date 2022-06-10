My files in the repo
ThiruReadme.md
Dockerfile
Jenkinsfile
settings.xml

can pull and run the docker image from my jfrog account using below commands
docker pull paladugu.jfrog.io/paladugu/petclinic:v3 
docker run -itd -p 8081:8081 paladugu.jfrog.io/paladugu/petclinic:v3


Step 1: I have created a jfrog account and added a repo for docker 
        paladugu.jfrog.io/ui/
        
        using set me up option, created package type Maven and generated a settings.xml, which used to build the source code

step 2: Forked given repo https://github.com/spring-projects/spring-petclinic in to my github account  https://github.com/Thirupse/spring-petclinic

In My Repo https://github.com/Thirupse/spring-petclinic  below steps
step 3: added settings.xml to my repo to build source code and to resolve all dependencies from jfrog.

step 4: Create Dockerfile with base image openjdk:11
        exposed a port
        copied xxxx-SNAPSHOT.jar from target dir to /usr/bin/
        Run the jar on port 8081.
        
step 5: Added a file Jenkinsfile with pipeline stages
        stages includes cloning source code from https://github.com/Thirupse/spring-petclinic
        compile the code using maven (mvn compile -s settings.xml)
        Run Tests & package Code using mvn clean install -s settings.xml 
        Used docker commands to build image using dockerfile
        tagged the image
        did docker login to the paladugu.jfrog.io using use/pass
        pushhed the image to jfrog
        run the container with same image
        
        
Step 7: created an aws account as I need a vm to run jenkins pipeline
        launched a t3.2xlarge ec2 machine to bare the load of pipeline
        on aws linux EC2 machine, installed openjdk11, git, docker, maven, jenkins
        accessed jenkins on and create pipeline project using jenkinsfile from SCM option and added my git repo and branch ru run
        added plugins git, docker, Oauth and credentials for jfrog
        run the pipeline and can see git clone, code compile, test, image build, tagging and pushing to jfrog and run it locally.
        
        
        
    
 
        
        
        
        
        
        
