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

If you've already worked with Atlas, connect using `atlas auth login`, which opens an interactive menu. If you select `UserAccount`, an Atlas login screen will open in a browser, you pass some codes back and forth, and the CLI is connected to your account. More likely, though, you'll be using API Keys or Service Accounts (which must be created in advance within Atlas).

> **Note:**
> To use the CLI in conjunction with **Atlas for Government**, use `atlas auth login --gov` and select the ServiceAccount or APIKeys option (which must be created in advance within *Atlas for Government*).

To test your connection, try `atlas deployments list`. It can be helpful to see where and how this connection information is stored - see [here](https://www.mongodb.com/docs/atlas/cli/current/atlas-cli-save-connection-settings/#locate-the-configuration-file) ("Locate the Configuration File") or [here](https://www.mongodb.com/docs/atlas/manage-atlas-cli/#view-a-profile) (various CLI commands to view the profile information). 

## Creating a Cluster

The doc page for `atlas cluster create` is [here](https://www.mongodb.com/docs/atlas/cli/current/command/atlas-clusters-create/), and it provides some simple [examples](https://www.mongodb.com/docs/atlas/cli/current/command/atlas-clusters-create/#examples) to get started. Not all options work with Atlas for Government. The following command deploys a very minimal cluster in AWS us-east-1 (it requires an Atlas project that was created without the "Gov regions only" option. Codes for the various cloud regions can be found [here](https://www.mongodb.com/docs/atlas/cloud-providers-regions/).
```
atlas cluster create test-cli-cluster --projectId <PROJECT-ID> --provider AWS --region US_EAST_1 --members 3 --tier M20 --mdbVersion 8.0 --diskSizeGB 10
```

