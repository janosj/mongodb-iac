# Atlas CLI

The Atlas CLI docs are available [here](https://www.mongodb.com/docs/atlas/cli/current/). 

## Installation

Installation instructions are [here](https://www.mongodb.com/docs/atlas/cli/current/install-atlas-cli/). If you're on a Mac and want to use Homebrew, you can run the following:
```
brew tap mongodb/brew
brew install mongodb-atlas
which atlas
```

## Connecting

Options to connect are documented [here](https://www.mongodb.com/docs/atlas/cli/current/connect-atlas-cli/). 

If you've already worked with Atlas, connect using `atlas auth login`, which opens an interactive menu. If you select `UserAccount`, an Atlas login screen will open in a browser, you pass some codes back and forth, and the CLI is connected to your account. More likely, though, you'll be using APIKeys or Service Accounts (which must be created in advance within Atlas).

> **Note:**
> To use the CLI in conjunction with **Atlas for Government**, use `atlas auth login --gov` and select the ServiceAccount or APIKeys option (which must be created in advance within *Atlas for Government*).

To test your connection, try `atlas deployments list`. It can be helpful to see where and how this connection information is stored - see [here](https://www.mongodb.com/docs/atlas/cli/current/atlas-cli-save-connection-settings/#locate-the-configuration-file) ("Locate the Configuration File") or [here](https://www.mongodb.com/docs/atlas/manage-atlas-cli/#view-a-profile) (various CLI commands to view the profile information). 

## Creating a Cluster

The doc page for `atlas cluster create` is [here](https://www.mongodb.com/docs/atlas/cli/current/command/atlas-clusters-create/). But that take you down a complex path:
- To create the json config file, see [here](https://www.mongodb.com/docs/atlas/cli/current/reference/json/cluster-config-file/)
- That points to the Atlas Admin API docs, [here](https://www.mongodb.com/docs/atlas/reference/api-resources-spec/v2/#tag/Clusters/operation/createCluster)
- From the Atlas Admin API docs, copy the Request sample, paste the contents into a json file, and adjust as necessary. That request sample ends up being somewhat complex. 

An easier path is to start [here](https://www.mongodb.com/docs/atlas/cli/current/atlas-cli-create-cluster-from-config-file/) ("Create an Atlas Cluster Using a Configuration File"). I exported the configuration of an existing sandbox cluster and modified it. The required fields are [here](https://www.mongodb.com/docs/atlas/reference/api-resources-spec/v2/#tag/Clusters/operation/createCluster).

