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
    maven-archetype-quickstart
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

5. Go to GitHub and ```create a new Personal Access Token(PAT)```. Allow the PAT to ```manage repositories```, ```workflow``` and ```write permissions```.

6. Open Jenkins, go to ```Security``` section and see ```Credentials```. Add a system credential.
    ```
    Kind: Secret text
    Scope: Global (Jenkins, nodes, items, all child items, etc)
    Secret: <paste_PAT_token>
    ID: <provide_ID>
    Description: <description>
    ```

7. In Jenkins, go to ```System```, find ```GitHub Servers``` and add a server.
    ```
    Name: <github_username>
    Credentials: <global_credential_created>

    ALLOW Manage hooks option
    ```

8. Download ```ngrok-v3-stable-windows-amd64.zip```. Unzip the file. Run the installer. 

9. Sign in to ```ngrok.com```, copy the command for windows to authenticate ```ngrok```.

10. Use ```ngrok``` to expose Jenkins.
    ```
    ngrok http 8080
    ```

11. Copy the ```forwarding``` URL.

12. Go to the GitHub repository created. Under ```settings```, go to ```Webhooks```. Create a new webhook. Fill the following details:
    ```
    Payload URL: <Paste forwarding URL exposed through ngrok>/github-webhook/

    Content type: application/json

    # Example:
    Payload URL: https://8ce98f4a8bcc.ngrok-free.app/github-webhook/
    ```

13. Create a new job on Jenkins. Give project a name, select ```freestyle project```. Go to ```Source Code Management```. Select ```Git```
    ```
    Repository URL: <github_repo_url>
    Credentials: none
    ```

14. Under ```Triggers```, select ```GitHub hook trigger for GITScm polling``` and under ```environment``` select ```Delete workspace before build starts```

15. Build the Jenkins project and then ```Build Now```.