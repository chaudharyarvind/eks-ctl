### Lunching EKS cluster using `eksctl`
The purpose of this repository is to walk you through, how to use [eksctl](https://eksctl.io/) to provision K8S cluster in AWS.

You can install `eksctl` locally or use provided `Dockerfile` to run `eksctl` in the container.

```
docker build . -t eksctl-util
```
```
docker run eksctl-util eksctl version
```

Set up AWS credentials on the PATH and Run

```
docker run -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e AWS_SESSION_TOKEN eksctl-util eksctl get cluster
```

Create EKS Cluster
```
docker run -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e AWS_SESSION_TOKEN -v $(pwd)/config:/config eksctl-util eksctl create cluster -f config/cluster.yml
```