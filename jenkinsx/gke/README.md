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
