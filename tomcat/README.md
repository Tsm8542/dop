# Steps:

1. Ensure ```Maven installation``` and ```Java installation```.

2. Check version of ```Maven``` and ```Java```.

3. Create a new Maven project in VS code.  
    ```
    # Open command palette in VS code
    Ctrl+ Shift+P 

    # Search and create new maven project
    Maven:New Project

    # Select following configuration
    maven-archetype-webapp
    ```

4. Create a new GitHub repository. Push the new Maven project here.
    ```
    git init
    
    git add .

    git commit -m "Initial commit"

    git add remote origin <repo_url>

    git branch -M main

    git push -u origin main
    ```

5. Download ```apache-tomcat-9.0.110-windows-x64.zip``` and extract it in ```C:/apache-tomcat-9.0.110```

6. Open ```C:/apache-tomcat-9.0.110/conf``` and open ```server.xml```. Find the tag ```<Connector port="8000">``` and change the port to ```7080```.

7. Open ```C:/apache-tomcat-9.0.110/conf``` and open ```tomcat-users.xml```. Find the tag ```<tomcat-users>``` and below it, add the following tags to add roles.
    ```
    <role rolename="manager-gui">
    <role rolename="manager-script">
    <user username="<your_username>" password="<your_password>" roles="manager-gui, manager-script">
    ```

8. Open ```C:/apache-tomcat-9.0.110/webapps/manager/META-INF``` and open ```context.xml```. Find the tag ```<Valve className="org.apache.catalina.valves.RemoteAddrValve">```. **Comment the whole tag**.

9. Open command prompt. Run the following commands:
    ```
    cd /
    cd apache-tomcat-9.0.110/bin
    startup.bat
    ```

10. Open a browser tab, access ```localhost:<tomcat_port>```. Click on ```Manager``` and sign in using the role created in ```tomcat-users```.

11. Open Jenkins, add the credentials as follows:
    ```
    Kind: Username with password
    Scope: Global (Jenkins, nodes, items, all child items, etc)
    Username: <tomcat-username>
    Password: <tomcat-password>
    Description: <description>
    ```

12. Create a new job in Jenkins. Select type as ```Pipeline```. Select ```Pipeline```.
    ```
    Definition: Pipeline script from SCM
    SCM: Git
    Repository URL: <github_repo_url>
    Credentials: <tomcat-credentials-added-in-jenkins>
    ```

13. In the Maven project directory, create a new ```Jenkinsfile``` (copy this file). Change the following variables:
    ```
    WAR_FILE
    TOMCAT_URL
    TOMCAT_USER
    TOMCAT_PASSWORD
    ```

14. Replace the contents of the ```index.jsp``` file with the contents of the file in this repository.

15. After creating the ```Jenkinsfile``` and replacing the ```index.jsp```, again push the updated code to GitHub repository.
    ```
    git add .
    git commit -m "Initial commit"
    git push
    ```

16. Go to Jenkins pipeline created. Build the pipeline and wait for the build to complete.