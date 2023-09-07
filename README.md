# Kedro Docker

Dockerized Kedro to run Spark.

## Usage

### Build image

* Define `ARG NB_UID` with your user id in `./dockerfile/Dockerfile`.
* Define `OWNER` variable in `./build.sh`.
* Run this script.

### Run container

* Define `OWNER` and `GIT_DIR` variable (with the path of the Kedro project) in `./run.sh`.
* Run this script.

The Kedro project will be mounted at `/home/kedro/work` folder.

### Customization

To add packages, add them to './context/requirements.txt' (pip requirements format) and build a new image.

### Run kedro viz

* Inside the running container on your kedro proyect path, run:

```sh
kedro viz --host=0.0.0.0 --no-browser
```

* Open <http://127.0.0.1:4141> in your preferred browser.
