# Kubernetes Operator for Atlas for Government

The Quick Start for using the Kubernetes Operator with Atlas for Government is available here: https://www.mongodb.com/docs/atlas/operator/current/ak8so-for-gov/

## Prerequisites

- Install the Atlas CLI. Per the Quick Start, only the CLI provides the `--gov` flag that indicates you want to use Atlas for Government as the target environment. If you need to install the Atlas CLI, you can find instructions [here](https://www.mongodb.com/docs/atlas/cli/current/install-atlas-cli/). If you're on a Mac and want to use Homebrew, you can run the following:
```
brew tap mongodb/brew
brew install mongodb-atlas
which atlas
```

- You must have access to a running Kubernetes cluster. This repo was built and tested using **minikube** (which requires **Docker**). You can find the minikube Quick Start [here](https://minikube.sigs.k8s.io/docs/start/). Once deployed, MDB-Atlas objects will be visible in the dashboard via the Custom Resource Definitions menu option. The few minikube commands you need are these:
    ```
    https://minikube.sigs.k8s.io/docs/start/
     - minikube start
     - kubectl get po -A
     - minikube dashboard --url
    ```

    This was also tested using OKD. Just remember the Atlas API key must have an IP Access List entry
    for the OKD node that is hosting the Atlas Kubernetes Operator.

- Login to MongoDB Atlas for Government.

- Create an API key.

