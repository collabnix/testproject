# Want to delete All AWS resources in a single shot?

```
[Captains-Bay]🚩 >  wget https://github.com/gruntwork-io/cloud-nuke/releases/download/v0.1.18/cloud-nuke_darwin_amd64
--2020-06-18 22:04:25--  https://github.com/gruntwork-io/cloud-nuke/releases/download/v0.1.18/cloud-nuke_darwin_amd64
Resolving github.com... 13.234.176.102
Connecting to github.com|13.234.176.102|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: https://github-production-release-asset-2e65be.s3.amazonaws.com/90905599/2b236200-7e3f-11ea-8c49-9c19f466907b?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20200618%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20200618T163426Z&X-Amz-Expires=300&X-Amz-Signature=416b8a086ef3a10d4e6a6c7a81dd6d1050d4e0adb08e621b112ee9516b51d5d5&X-Amz-SignedHeaders=host&actor_id=0&repo_id=90905599&response-content-disposition=attachment%3B%20filename%3Dcloud-nuke_darwin_amd64&response-content-type=application%2Foctet-stream [following]
--2020-06-18 22:04:26--  https://github-production-release-asset-2e65be.s3.amazonaws.com/90905599/2b236200-7e3f-11ea-8c49-9c19f466907b?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20200618%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20200618T163426Z&X-Amz-Expires=300&X-Amz-Signature=416b8a086ef3a10d4e6a6c7a81dd6d1050d4e0adb08e621b112ee9516b51d5d5&X-Amz-SignedHeaders=host&actor_id=0&repo_id=90905599&response-content-disposition=attachment%3B%20filename%3Dcloud-nuke_darwin_amd64&response-content-type=application%2Foctet-stream
Resolving github-production-release-asset-2e65be.s3.amazonaws.com... 52.216.9.91
Connecting to github-production-release-asset-2e65be.s3.amazonaws.com|52.216.9.91|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 35823936 (34M) [application/octet-stream]
Saving to: ‘cloud-nuke_darwin_amd64’

cloud-nuke_darwin_amd64                 100%[=============================================================================>]  34.16M  3.28MB/s    in 12s

2020-06-18 22:04:39 (2.88 MB/s) - ‘cloud-nuke_darwin_amd64’ saved [35823936/35823936]

[Captains-Bay]🚩 >  mv cloud-nuke_darwin_amd64 /usr/local/bin/cloud-nuke
[Captains-Bay]🚩 >  chmod +x /usr/local/bin/cloud-nuke
[Captains-Bay]🚩 >  cloud-nuke aws
INFO[2020-06-18T22:04:55+05:30] The following resources types will be nuked:
INFO[2020-06-18T22:04:55+05:30] - ami
INFO[2020-06-18T22:04:55+05:30] - asg
INFO[2020-06-18T22:04:55+05:30] - ebs
INFO[2020-06-18T22:04:55+05:30] - ec2
INFO[2020-06-18T22:04:55+05:30] - ecsserv
INFO[2020-06-18T22:04:55+05:30] - eip
INFO[2020-06-18T22:04:55+05:30] - ekscluster
INFO[2020-06-18T22:04:55+05:30] - elb
INFO[2020-06-18T22:04:55+05:30] - elbv2
INFO[2020-06-18T22:04:55+05:30] - lc
INFO[2020-06-18T22:04:55+05:30] - rds
INFO[2020-06-18T22:04:55+05:30] - s3
INFO[2020-06-18T22:04:55+05:30] - snap
INFO[2020-06-18T22:04:55+05:30] Retrieving active AWS resources in [eu-north-1, ap-south-1, eu-west-3, eu-west-2, eu-west-1, ap-northeast-2, ap-northeast-1, sa-east-1, ca-central-1, ap-southeast-1, ap-southeast-2, eu-central-1, us-east-1, us-east-2, us-west-1, us-west-2]
INFO[2020-06-18T22:04:55+05:30] Checking region [1/16]: eu-north-1
INFO[2020-06-18T22:05:06+05:30] Getting - 1-5 buckets of batch 1/1
INFO[2020-06-18T22:05:09+05:30] Checking region [2/16]: ap-south-1
INFO[2020-06-18T22:05:12+05:30] Checking region [3/16]: eu-west-3
INFO[2020-06-18T22:05:21+05:30] Checking region [4/16]: eu-west-2
```

