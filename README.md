# About

Docker image for Arquivei node projects.

## Extra programs

Beyond node, make and default build tools and libraries we have:

- gzip
- python

## Environment Variables

Those scripts expect the following environments variables to be set:

- *AWS_CREDENTIALS*
- *AWS_CONFIGS*
- *AWS_DEFAULT_REGION*
- *GCLOUD_PROD_KEYFILE*
- *GCLOUD_PROD_PROJECT*
- *GCLOUD_DEV_KEYFILE*
- *GCLOUD_DEV_PROJECT*
- *GCLOUD_DEV_KEYFILE*
- *GCLOUD_DEV_PROJECT*
- *GCLOUD_PROJECT*

### Using this image

# Using in node projects

This image provide some tools that help a better build, like make, curl, gzip, pip. It's really necessary to use this image in every frontend project to provide the correct usage of node version.

# Using in code pipeline

This image works as a helper to build docker images using Docker. After this is really expected to push those images created to a container registry.

If you are going to push the generated assets to AWS or GCP, run the appropriate scripts:

*AWS*

`$ sh /setup-aws-credentials.sh`'


*GCP*

`sh /setup-gcloud-credentials.sh prod`

or

`$ sh /setup-gcloud-credentials.sh dev`

