version: "3.1"
services:
  testproject-agent:
    image: testproject/agent:latest
    container_name: testproject-agent
    depends_on:
      - chrome
      - firefox
    environment:
      TP_API_KEY: "REPLACE_WITH_YOUR_KEY"
      TP_JOB_ID: "REPLACE_WITH_YOUR_JOB_ID"
      TP_JOB_PARAMS: '"jobParameters" : { "browsers": [ "chrome", "firefox" ] }'
      CHROME: "chrome:4444"
      FIREFOX: "firefox:4444"
  chrome:
    image: selenium/standalone-chrome
    volumes:
      - /dev/shm:/dev/shm
  firefox:
    image: selenium/standalone-firefox
    volumes:
      - /dev/shm:/dev/shm
