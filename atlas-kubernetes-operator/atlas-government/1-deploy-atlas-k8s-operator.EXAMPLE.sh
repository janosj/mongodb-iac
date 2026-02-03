
atlas kubernetes operator install --atlasGov --ipAccessList <IP_OR_CIDR>


# Deploys the Atlas Kubernetes Operator to a Kubernetes cluster.
# Configures the Operator to connect to Atlas for Government via the --atlasGov flag.

# <IP_OR_CIDR> is the Access List entry for the API Key that is created
# automatically in A4G, to be used by the Operator. You'll see it listed
# as "mongodb-atlas-operator-api-key" in the list of API keys at the
# organization level, as well as in any Projects created by the operator. 

# The --atlasGov flag configures the Operator to direct tasks to the
# Atlas for Government control plane. Note that the "atlas" command
# refers to the Atlas CLI, which itself must have authenticated using the 
# --gov flag before deploying the Operator initially. 
# (i.e. you authenticated the Atlas CLI using 'atlas auth login --gov')


# To delete: run z-delete-atlas-k8s-operator.sh
# That only destroyes the Kubernetes operator resources. 
# Atlas resources (including the API key) will remain. 


# The following command will show the operator deployed into the default namespace:
# kubectl get pods --all-namespaces -w

