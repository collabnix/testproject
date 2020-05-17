# Demonstrating TestProject Docker Agent with Jenkins

```
docker run --name testproject-agent \
    -e TP_API_KEY="REPLACE_WITH_YOUR_KEY" \
    -e TP_AGENT_ALIAS="My First Agent" \
    -v </path/to/host/folder>:/var/testproject/agent \
    testproject/agent:latest
```


## Docker Compose 

```
docker-compose -f ../testproject/testprojectagent.yaml
```

## Using TestProject with Jenkins

# Installing Jenkins

```
brew install jenkins-lts
```

```
brew uninstall jenkins --force
brew cleanup
```


## Start the Jenkins service: 

```
brew services start jenkins-lts
```

# Restart the Jenkins service: 

```
brew services restart jenkins-lts
```

# Update the Jenkins version: 

```
brew upgrade jenkins-lts
```


## Installing TestProject Jenkins Plugin

- Open your favorite browser and navigate to your Jenkins server.
- Choose Manage Jenkins → Manage Plugin → Available Tab.
- Filter “TestProject” → Select TestProject plugin and hit Install without Restart.


## Creating a TestProject API Key



## Running a TestProject Job from Jenkins


- After installing the TestProject Jenkins plugin, generating an API key and configuring it to be used by Jenkins, you are ready to go ahead and incorporate your automated tests in the CI process. The plugin supports the two most popular approaches: Freestyle & Pipeline.

