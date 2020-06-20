```
Triggered Jenkins job:  http://jenkins.jx.104.199.185.179.nip.io/job/collabnix/job/environment-whimseylemon-staging/
Creating GitHub webhook for collabnix/environment-whimseylemon-staging for url http://jenkins.jx.104.199.185.179.nip.io/github-webhook/
Using Git provider github.com at https://github.com
? Using Git user name: collabnix
? Using organisation: collabnix
Creating repository collabnix/environment-whimseylemon-production
Creating Git repository collabnix/environment-whimseylemon-production
Pushed Git repository to https://github.com/collabnix/environment-whimseylemon-production
Creating production Environment in namespace jx
Created environment production
Namespace jx-production created
Created Jenkins Project: http://jenkins.jx.104.199.185.179.nip.io/job/collabnix/job/environment-whimseylemon-production/
Note that your first pipeline may take a few minutes to start while the necessary images get downloaded!
Triggered Jenkins job:  http://jenkins.jx.104.199.185.179.nip.io/job/collabnix/job/environment-whimseylemon-production/
Creating GitHub webhook for collabnix/environment-whimseylemon-production for url http://jenkins.jx.104.199.185.179.nip.io/github-webhook/
Jenkins X installation completed successfully
        ********************************************************
             NOTE: Your admin password is: Tez6-p6gy8spITz=R1aG
        ********************************************************
Your Kubernetes context is now set to the namespace: jx
To switch back to your original namespace use: jx namespace default
Or to use this context/namespace in just one terminal use: jx shell
For help on switching contexts see: https://jenkins-x.io/developing/kube-context/
To import existing projects into Jenkins X:       jx import
To create a new Spring Boot microservice:       jx create spring -d web -d actuator
To create a new microservice from a quickstart: jx create quickstart
Fetching cluster endpoint and auth data.
kubeconfig entry generated for whimseylemon.
Context "gke_famous-hull-276807_asia-east1-b_whimseylemon" modified.
NAME              HOSTS                                       ADDRESS           PORTS   AGE
chartmuseum       chartmuseum.jx.104.199.185.179.nip.io       104.199.185.179   80      3m9s
docker-registry   docker-registry.jx.104.199.185.179.nip.io   104.199.185.179   80      3m9s
jenkins           jenkins.jx.104.199.185.179.nip.io           104.199.185.179   80      3m9s
nexus             nexus.jx.104.199.185.179.nip.io             104.199.185.179   80      3m9s
karanveersingh5623@cloudshell:~ (famous-hull-276807)$
```


```
karanveersingh5623@cloudshell:~/jenkinsx-tutorial/backend1 (famous-hull-276807)$ jx create quickstart
^[c^C
karanveersingh5623@cloudshell:~/jenkinsx-tutorial/backend1 (famous-hull-276807)$ cd
karanveersingh5623@cloudshell:~ (famous-hull-276807)$ jx create quickstart
? select the quickstart you wish to create php-helloworld
Using Git provider github.com at https://github.com
? Do you wish to use collabnix as the Git user name? Yes
? Who should be the owner of the repository? collabnix
? Enter the new repository name:  collabphp
Creating repository collabnix/collabphp
Generated quickstart at /home/karanveersingh5623/collabphp
Created project at /home/karanveersingh5623/collabphp
The directory /home/karanveersingh5623/collabphp is not yet using git
? Would you like to initialise git now? Yes
? Commit message:  Initial import
Git repository created
performing pack detection in folder /home/karanveersingh5623/collabphp
--> Draft detected PHP (76.495726%)
selected pack: /home/karanveersingh5623/.jx/draft/packs/github.com/jenkins-x-buildpacks/jenkins-x-kubernetes/packs/php
replacing placeholders in directory /home/karanveersingh5623/collabphp
app name: collabphp, git server: github.com, org: collabnix, Docker registry org: famous-hull-276807
skipping directory "/home/karanveersingh5623/collabphp/.git"
Draft pack php added
? Would you like to define a different preview namespace? Yes
? Enter the name for the preview namespace:  jx-previews
Pushed Git repository to https://github.com/collabnix/collabphp
Created Jenkins Project: http://jenkins.jx.104.199.185.179.nip.io/job/collabnix/job/collabphp/
Watch pipeline activity via:    jx get activity -f collabphp -w
Browse the pipeline log via:    jx get build logs collabnix/collabphp/master
You can list the pipelines via: jx get pipelines
When the pipeline is complete:  jx get applications
For more help on available commands see: https://jenkins-x.io/developing/browsing/
Note that your first pipeline may take a few minutes to start while the necessary images get downloaded!
Triggered Jenkins job:  http://jenkins.jx.104.199.185.179.nip.io/job/collabnix/job/collabphp/
Creating GitHub webhook for collabnix/collabphp for url http://jenkins.jx.104.199.185.179.nip.io/github-webhook/
karanveersingh5623@cloudshell:~ (famous-hull-276807)$
```


```
karanveersingh5623@cloudshell:~$ git clone https://github.com/collabnix/testproject
Cloning into 'testproject'...
remote: Enumerating objects: 48, done.
remote: Counting objects: 100% (48/48), done.
remote: Compressing objects: 100% (42/42), done.
remote: Total 319 (delta 19), reused 0 (delta 0), pack-reused 271
Receiving objects: 100% (319/319), 101.04 KiB | 0 bytes/s, done.
Resolving deltas: 100% (164/164), done.
karanveersingh5623@cloudshell:~$ cd
karanveersingh5623@cloudshell:~$ cd testproject/
karanveersingh5623@cloudshell:~/testproject$ jx import --batch-mode
WARNING: No username defined for the current Git server!
performing pack detection in folder /home/karanveersingh5623/testproject
--> Draft detected Text (52.503654%)
--> Could not find a pack for Text. Trying to find the next likely language match...
--> Draft detected YAML (33.961161%)
--> Could not find a pack for YAML. Trying to find the next likely language match...
--> Draft detected HTML (5.345584%)
--> Could not find a pack for HTML. Trying to find the next likely language match...
--> Draft detected JavaScript (3.432867%)
selected pack: /home/karanveersingh5623/.jx/draft/packs/github.com/jenkins-x-buildpacks/jenkins-x-kubernetes/packs/javascript
replacing placeholders in directory /home/karanveersingh5623/testproject
app name: testproject, git server: github.com, org: collabnix, Docker registry org: famous-hull-276807
skipping directory "/home/karanveersingh5623/testproject/.git"
Draft pack javascript added
Username for 'https://github.com': collabnix
Password for 'https://collabnix@github.com':
Pushed Git repository to https://github.com/collabnix/testproject
Created Jenkins Project: http://jenkins.jx.104.199.185.179.nip.io/job/collabnix/job/testproject/
Watch pipeline activity via:    jx get activity -f testproject -w
Browse the pipeline log via:    jx get build logs collabnix/testproject/master
You can list the pipelines via: jx get pipelines
When the pipeline is complete:  jx get applications
For more help on available commands see: https://jenkins-x.io/developing/browsing/
Note that your first pipeline may take a few minutes to start while the necessary images get downloaded!
Triggered Jenkins job:  http://jenkins.jx.104.199.185.179.nip.io/job/collabnix/job/testproject/
Creating GitHub webhook for collabnix/testproject for url http://jenkins.jx.104.199.185.179.nip.io/github-webhook/
karanveersingh5623@cloudshell:~/testproject$
```

