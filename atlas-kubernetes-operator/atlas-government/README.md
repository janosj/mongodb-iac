# Kubernetes Operator for Atlas for Government

The Quick Start for using the Kubernetes Operator with Atlas for Government is available here: https://www.mongodb.com/docs/atlas/operator/current/ak8so-for-gov/

## Prerequisites

- Install the **Atlas CLI**. Per the Quick Start, only the CLI provides the `--gov` flag that indicates you want to use Atlas for Government as the target environment for the CLI (whereas *kubectl* does not). If you haven't yet installed the Atlas CLI, you can find abbreviated instructions [here](https://github.com/janosj/mongodb-iac/tree/main/atlas-cli) (in this same repo), highlighting the CLI switch to use Atlas for Government. Verify CLI connectivity to A4G before continuing. 

- You must have access to a running Kubernetes cluster. This repo was built and tested using **minikube** (which requires **Docker**). Refer to the minikube Quick Start [here](https://minikube.sigs.k8s.io/docs/start/) for the extremely simple download and installation instructions. Once deployed, MDB-Atlas objects will be visible in the dashboard via the Custom Resource Definitions menu option. The few minikube commands you need are these:
    ```
    minikube start
    kubectl get po -A
    minikube dashboard --url
    ```

    This was also tested using OKD. Just remember the Atlas API key must have an IP Access List entry
    for the OKD node that is hosting the Atlas Kubernetes Operator.

## Deploy the Operator

The following command will deploy the kubernetes operator configured to use Atlas for Government. Note the `atlasGov` flag. 
```
atlas kubernetes operator install --atlasGov --ipAccessList <IP_OR_CIDR>
```
This step automatically creates an API key (description = `mongodb-atlas-operator-api-key`) in A4G for use by the kubernetes operator. 

## Deploy A4G Resources

Create a Project and deploy a cluster. 

