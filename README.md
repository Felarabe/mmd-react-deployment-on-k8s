This project was my solution to a challege on Andela4.0 Google Africa Scholarship, Cloud Engineering path.<br/>
The prject directory contains a sample react-app, packaged into a Dockerfile.<br/>

The Dockerfile is to be built into an image, stored og Google Container Register and thereafter, deployed on GKE Clusters.

### Requirements:
### `Active Google Cloud Billing Account`
### `Gcloud CLI or SDK`
### `docker`
### `kubernetes clusters'

## Available Scripts

### `docker build image -t gcr.io/[PROJECT-ID]/[IMAGE]`
Buillds and package the app into a container image and stores it in container registry<br/>
You can run the container on your local machine to test the image<br/>
Open https://docs.docker.com/engine/reference/run/ for guide on how to do this
