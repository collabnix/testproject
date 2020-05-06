# Demonstrating TestProject Docker Agent with Jenkins

```
docker run --name testproject-agent \
    -e TP_API_KEY="REPLACE_WITH_YOUR_KEY" \
    -e TP_AGENT_ALIAS="My First Agent" \
    -v </path/to/host/folder>:/var/testproject/agent \
    testproject/agent:latest
```


# Docker Compose 

```
docker-compose -f ../testproject/testprojectagent.yaml
```
