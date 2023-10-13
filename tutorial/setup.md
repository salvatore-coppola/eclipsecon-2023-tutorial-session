# Eclipsecon 2023 Talk tutorial: Addressing Edge AI Challenges to Scale. Anomaly detection/inference made simple with Eclipse Kura & Kapua.

## Installation

Copy the contents of the USB stick (or unpack the archive containing this instruction file) into a working directory of your choice on your system.

Load the three archives containing the docker containers required for this tutorial with the following commands

```shell
docker load -i kura_eclipsecon2023-5.3.1-alpine-x86_64.tar.gz
docker load -i tensorflow-notebook_eclipsecon2023-2023-09-11.tar.gz
docker load -i tritonserver_eclipsecon2023-22.07-tf2-python-py3.tar.gz
```

Run the following command in the working directory from the shell to start up the environment:

```shell
docker compose up -d
```

Verify that the three docker containers are up and running with the command:

```shell
docker ps
```

Run and take note of the `token-id` printed in the console by the jupyter-notebook container

```shell
docker compose logs jupyter-notebook
```

## Running

Access the file `eclipsecon2023-model-building-training.ipynb` in the Jupyter Notebook instance running on your device.

## Endpoints

- Eclipse Kura&trade;: https://localhost 
  - Credentials: admin/admin
- Jupyter Notebook: http://localhost:8888/lab?token=`token-id`
  - Credentials: the `token-id` noted earlier
- Nvidia&trade; Triton: localhost:4000-4002 (no web fronted)
- Eclipse Kapua&trade;: https://eclipsecon2023-kapua.dev.everyware.io
  - Account: eclipsecon2023
  - Credentials: Check on card you received
  - MQTT port: 1883

