# docker-awscli-terraform

## Build image
```
docker build .
```

build option:
* TERRAFORM_VERSION: your terraform version

You can use following command build an image to use specific terraform version
```
docker build  . --build-arg TERRAFORM_VERSION={ver}
```
---

## Run docker

First you shoud prepare your aws crednetial.  
And then you can set your aws-cli  
[Reference](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html)

For example,  
you can set environment variable to use aws-cli in container,  
consider following example:

```
docker run -it \
-e AWS_ACCESS_KEY_ID={your-aws-key} \
-e AWS_SECRET_ACCESS_KEY={your-aws-secret} \
-e AWS_DEFAULT_REGION={your-default-region} \
-v {/source:/dest} \
-w {/your-workspace} \ 
{image-id} \
```