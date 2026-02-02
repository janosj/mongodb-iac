# Atlas CLI

The Atlas CLI docs are available [here](https://www.mongodb.com/docs/atlas/cli/current/). Installation instructions are [here](https://www.mongodb.com/docs/atlas/cli/current/install-atlas-cli/). If you're on a Mac and want to use Homebrew, you can run the following:
```
brew tap mongodb/brew
brew install mongodb-atlas
which atlas
```

If you haven't used Atlas before, you can try `atlas setup`. Otherwise, use `atlas auth login`, which opens an interactive menu. If you select `UserAccount`, an Atlas login screen will open in a browser, you pass some codes back and forth, and the CLI is connected to your account. More likely, though, you'll be using APIKeys or Service Accounts (which must be created in Atlas in advance).

> **Note:**
> To use the CLI in conjuntion with **Atlas for Government**, use `atlas auth login --gov` and select the ServiceAccount or APIKeys option, which must also be created in advance in *Atlas for Government*

For a smoke test, try `atlas deployments list`

## Creating a Cluster

The doc page for `atlas cluster create` is [here](https://www.mongodb.com/docs/atlas/cli/current/command/atlas-clusters-create/). But that take you down a complex path:
- To create the json config file, see [here](https://www.mongodb.com/docs/atlas/cli/current/reference/json/cluster-config-file/)
- That points to the Atlas Admin API docs, [here](https://www.mongodb.com/docs/atlas/reference/api-resources-spec/v2/#tag/Clusters/operation/createCluster)
- From the Atlas Admin API docs, copy the Request sample, paste the contents into a json file, and adjust as necessary. That request sample ends up being somewhat complex. 

An easier path is to start [here](https://www.mongodb.com/docs/atlas/cli/current/atlas-cli-create-cluster-from-config-file/) ("Create an Atlas Cluster Using a Configuration File"). I exported the configuration of an existing sandbox cluster and modified it. The required fields are [here](https://www.mongodb.com/docs/atlas/reference/api-resources-spec/v2/#tag/Clusters/operation/createCluster).



