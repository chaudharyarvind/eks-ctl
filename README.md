### Lunching EKS cluster using `eksctl`
The purpose of this repository is to walk you through, how to use [eksctl](https://eksctl.io/) to provision K8S cluster in AWS.

You can install `eksctl` locally or use provided `Dockerfile` to run `eksctl` in the container.

```
docker build . -t eksctl
```
```
docker run eksctl version
```

Set up AWS credentials on the PATH and Run

```
docker run -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e AWS_SESSION_TOKEN eksctl get cluster
```

Create EKS Cluster
```
docker run -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e AWS_SESSION_TOKEN -v $(pwd)/config:/config
```