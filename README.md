# Eclipsecon 2023 Talk tutorial: Addressing Edge AI Challenges to scale. Anomaly detection/inference made simple with Eclipse Kura & Kapua.

## Description

Moving AI models from development to production has its own set of challenges and risks when the Edge is involved.

In this laboratory we're going to learn how to overcome these challenges leveraging the Nvidia Triton™ Inference Server, **Eclipse Kura** and **Eclipse Kapua,** two frameworks for the Edge and Cloud.

This laboratory will give attendees a hands-on experience of the entire lifecycle of an Edge AI application, from data collection to training to model deployment.

We're going to build an anomaly detection model for a field appliance in **Tensorflow Keras** and learn what are the required steps to make it available through Nvidia Triton Inference Server, optimize it for improved inference times and deploy it on the edge using Nvidia devices for GPU-accelerated inference.

During the tutorial we'll focus on the process of creating a deep learning anomaly detector from scratch, leveraging the entire Eclipse ecosystem:

- **Data collection**: Kura Wires for collecting diagnostic data from an appliance and upload on the Eclipse Kapua cloud
- **Training**: How can we download the collected data from Kapua Cloud and develop a model within Tensorflow Keras
- **Inference**: How can we export the trained model for running on an Inference Server (Nvidia Triton™ Server) which will be our target runtime.
- **Deployment**: How can we deploy this trained model on the edge device leveraging the intuitive Kura Wires interface and running the models with Eclipse Kura's inference engine service.

## Objective

Build an anomaly detection model for a field appliance in Tensorflow Keras and learn what are the required steps to make it available through Nvidia Triton Inference Server.

## Attendee pre-requisites

Attendees will be asked to:

1. Use a Laptop Computer running Linux, MacOS or Windows, with a container engine installed1 (e.g. Docker or Podman).
2. Download some docker containers following the instructions provided afterwards.
3. Connect to a Wi-Fi network created by the Eclipse Kura team where an Eclipse Kapua instance will be running.

## Running of the session

The session will be divided in three sections:

1. Data Collection
2. Model building
3. Data Inference

### Attendee Setup

The attendee will connect to the wifi created by Kura Team and receive a USB stick containing the session material (but not required for the session) and credentials to access Kapua.

The attendee will download, from the provided endpoint of a local Docker Container Registry the following images:

- Latest Eclipse Kura images for x86
- Nvidia Triton Server for x86
- Jupiter Network containing the training data set for x86

### Resources

- Eurotech USB Keys with all the materials.
- Docker registry allowing downloading the following images:
  1. Eclipse Kura x86
  2. Nvidia Triton x86
  3. Jupyter Notebook containing the training data set for x86
- Wifi Access Point.
- ReliaCOR 44-11 running Eclipse Kapura and Docker Registry.

### 1. Data Collection

We want user to collect data from a simulated device with different sensors. In order to do that we will create a DummySenseHAT bundle producing fake sensor data in the same way the real Raspberry SenseHAT does. The user will create a simple wire graph in order to upload data to their Eclipse Kapua account

This process will show how easy is to upload data to Eclipse Kapua but they will not be used for the training.

However those data will be not used for training but a csv file containing the data already prepared, will be supplied to the attendee.

The needed data will be included in the Jupyter Notebook docker image used in the next phase.

### 2. Model building

The participant will need to run of the Jupyter notebook container, and follow the instructions he will find within.

Once the instructions are followed, the user will get the properly converted model for Triton.

The instructions will be extracted from Mattia's previous talk2

### 3. Data inference

The user will configure Eclipse Kura docker image. He will connect the Kura instance with the Nvidia Triton instance through the `TritonServerRemoteService`

The user will create a Wire Graph able to get data to examine from the Dummy Driver and test them into the Ai Wire Component configured with the model trained in the previous phase, in order to detect an anomaly.

The SenseHAT dummy is a driver that generates data compatible with that of the SenseHAT Raspberry occasionally generating anomalies.

## Activity items:

- Kapua deployment on ReliaCOR 44-11 with the creation of some credentials for the users.
- Setup Access point.
- Docker registry setup on ReliaCOR 44-11 e images loading.
- Update of the Mattia's notebook Eclipsecon 2022.
- Create the tutorial instructions for the user.
- Create jupyter notebook image by adding the necessary layers (training data set and the notebook).
- Presentation preparation with step-by-step guide
- SensaHAT dummy driver development.

 

[**1**]  Users with Macos arm64 must have installed the latest Docker Desktop with the Rosetta emulation enabled as all the containers will be for the x86_64 architecture

[**2**]  https://github.com/mattdibi/eclipsecon-edgeAI-talk
