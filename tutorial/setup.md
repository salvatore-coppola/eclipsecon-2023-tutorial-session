# Eclipsecon 2023 Talk tutorial: Addressing Edge AI Challenges to scale. Anomaly detection/inference made simple with Eclipse Kura & Kapua.

## Installation

Copy the contents of the USB stick we provided you with into a working directory on your system.

Load the three archives containing the docker containers required for this tutorial with the following commands

```shell
docker load -i kura_eclipsecon2023-5.3.1-alpine-x86_64.tar.gz
docker load -i tensorflow-notebook_eclipsecon2023-2023-09-11.tar.gz
docker load -i tritonserver_eclipsecon2023-23.08-tf2-python-py3.tar.gz
```

Run the following command in the working directory from the shell to start up the environment:

```shell
docker compose up
```

Take note of the <token-id> printed in the console by the jupyter-notebook container

Verify that the three docker containers are up and running with the command:

```shell
docker ps
```

## Endpoints

- Eclipse Kura&trade;: https://localhost 
  - Credentials: admin/admin
- Jupyter Nokebook: http://localhost:8888/lab?token=<token-id> 
  - Credentials: Annotate the <token-id>
- Nvidia&trade; Triton: localhost:4000-4002 (no web fronted)
- Eclipse Kapua&trade;: https://endpoint-to-be-decided
  - Credentials: Check on your card

