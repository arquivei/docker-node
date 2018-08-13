### About

This image is intended to be used in Bitbucket's pipelines for node projects.

It's also shipped with aws and gcloud clients and some utility scripts.

### Using this image

If you are going to push the generated assets to aws or gcloud, run the appropriate scripts:

    $ sh /setup-aws-credentials.sh

    $ sh /setup-gcloud-credentials.sh prod
    or
    $ sh /setup-gcloud-credentials.sh dev

Those scripts expects the following environments variables to be set:

  - AWS_CREDENTIALS
  - AWS_CONFIGS
  - GCLOUD_PROD_KEYFILE
  - GCLOUD_PROD_PROJECT
  - GCLOUD_DEV_KEYFILE
  - GCLOUD_DEV_PROJECT
