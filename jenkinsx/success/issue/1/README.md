```
Showing logs for build jenkins-x-testproject-environment-mytestproject-staging-master-8 stage meta-pipeline and container step-credential-initializer-sv9gj
{"level":"info","ts":1593631354.0819097,"logger":"fallback-logger","caller":"logging/config.go:69","msg":"Fetch GitHub commit ID from kodata failed: open /var/run/ko/refs/heads/0.8.0-ns-support: no such file or directory"}
{"level":"info","ts":1593631354.0825865,"logger":"fallback-logger","caller":"creds-init/main.go:40","msg":"Credentials initialized."}
Showing logs for build jenkins-x-testproject-environment-mytestproject-staging-master-8 stage meta-pipeline and container step-working-dir-initializer-cmbd4
{"level":"info","ts":1593631355.0201159,"logger":"fallback-logger","caller":"logging/config.go:69","msg":"Fetch GitHub commit ID from kodata failed: open /var/run/ko/HEAD: no such file or directory"}
{"level":"info","ts":1593631355.0232308,"logger":"fallback-logger","caller":"bash/main.go:64","msg":"Successfully executed command \"sh -c mkdir -p /workspace/source\"; output "}
Showing logs for build jenkins-x-testproject-environment-mytestproject-staging-master-8 stage meta-pipeline and container step-place-tools
Showing logs for build jenkins-x-testproject-environment-mytestproject-staging-master-8 stage meta-pipeline and container step-git-source-meta-jenkins-x-testproject-envi-tb4s9-jprkz
{"level":"info","ts":1593631361.1069922,"logger":"fallback-logger","caller":"logging/config.go:69","msg":"Fetch GitHub commit ID from kodata failed: open /var/run/ko/refs/heads/0.8.0-ns-support: no such file or directory"}
{"level":"info","ts":1593631361.399746,"logger":"fallback-logger","caller":"git/git.go:103","msg":"Successfully cloned https://github.com/jenkins-x-testproject/environment-mytestproject-staging.git @ 4bebfc3d65e7e132e033f3befa37aff7319cd8f6 in path /workspace/source"}
Showing logs for build jenkins-x-testproject-environment-mytestproject-staging-master-8 stage meta-pipeline and container step-git-merge
Using SHAs from PULL_REFS=master:4bebfc3d65e7e132e033f3befa37aff7319cd8f6
WARNING: no SHAs to merge, falling back to initial cloned commit
Showing logs for build jenkins-x-testproject-environment-mytestproject-staging-master-8 stage meta-pipeline and container step-merge-pull-refs
SKIP merge-pull-refs: Nothing to merge
Showing logs for build jenkins-x-testproject-environment-mytestproject-staging-master-8 stage meta-pipeline and container step-create-effective-pipeline
selected pack: /builder/home/.**/draft/packs/github.com/jenkins-x-buildpacks/jenkins-x-kubernetes/packs/environment
Effective pipeline written to jenkins-x-promotion-effective.yml
Showing logs for build jenkins-x-testproject-environment-mytestproject-staging-master-8 stage meta-pipeline and container step-create-tekton-crds
running command: ** step next-version --use-git-tag-only --tag
created new version: 0.0.8 and written to file: ./VERSION
Tag v0.0.8 created and pushed to remote origin
PipelineActivity for jenkins-x-testproject-environment-mytestproject-staging-master-8
```
