# Deploys a basic test cluster.
# For more configuration examples, see here:
# https://www.mongodb.com/docs/atlas/operator/current/atlasdeployment-custom-resource/

kubectl apply -f atlas-cluster.yaml

# Verify
echo "The following command will show the deployment, but not whether the cluster is ready."
echo "For complete status information, look at the Atlas GUI."
kubectl get AtlasDeployment --all-namespaces

echo
echo "Or, use json output to view status conditions:"
echo "kubectl get AtlasDeployment test-k8s-cluster -o json"

echo
echo "Or, specify a JSONPath query to access the specific status field."
echo "(Inspect script for details.)"


# The output of this query is either true or false, but note that the output sometimes gets
# prefixed to the command prompt, making it seem like the query returned empty.

# kubectl get AtlasDeployment test-k8s-cluster -o=jsonpath='{.status.conditions[?(@.type=="ClusterReady")].status}'

# To delete the cluster, run the following:
# kubectl delete -f atlas-cluster.yaml
#
# However, Deletion Protection is the default behavior
# i.e. the Operator does not actually delete the resources in Atlas. 
# You should therefore delete the resource manually in Atlas after you've
# removed it from the Kubernetes management plane. See here:
# https://www.mongodb.com/docs/atlas/operator/current/ak8so-quick-start/#procedure

