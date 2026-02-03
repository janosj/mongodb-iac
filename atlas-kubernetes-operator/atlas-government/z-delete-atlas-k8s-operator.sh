# To-Do: it's probably better to do this via namespaces.

kubectl delete crd atlasnetworkcontainers.atlas.mongodb.com
kubectl delete crd atlasnetworkpeerings.atlas.mongodb.com
kubectl delete crd atlasipaccesslists.atlas.mongodb.com
kubectl delete crd atlasfederatedauths.atlas.mongodb.com
kubectl delete crd atlasdatabaseusers.atlas.mongodb.com
kubectl delete crd atlassearchindexconfigs.atlas.mongodb.com
kubectl delete crd atlasstreamconnections.atlas.mongodb.com
kubectl delete crd atlasstreaminstances.atlas.mongodb.com
kubectl delete crd atlasteams.atlas.mongodb.com
kubectl delete crd atlasprojects.atlas.mongodb.com
kubectl delete crd atlasthirdpartyintegrations.atlas.mongodb.com
kubectl delete crd atlasbackupcompliancepolicies.atlas.mongodb.com
kubectl delete crd atlasbackuppolicies.atlas.mongodb.com
kubectl delete crd atlasbackupschedules.atlas.mongodb.com
kubectl delete crd atlascustomroles.atlas.mongodb.com
kubectl delete crd atlasdatafederations.atlas.mongodb.com
kubectl delete crd atlasdeployments.atlas.mongodb.com
kubectl delete crd atlasorgsettings.atlas.mongodb.com
kubectl delete crd atlasprivateendpoints.atlas.mongodb.com

kubectl delete serviceaccount mongodb-atlas-operator
kubectl delete role mongodb-atlas-leader-election-role
kubectl delete clusterrole mongodb-atlas-manager-role
kubectl delete clusterrole mongodb-atlas-metrics-reader
kubectl delete clusterrolebinding mongodb-atlas-manager-rolebinding
kubectl delete rolebinding mongodb-atlas-leader-election-rolebinding
kubectl delete secret mongodb-atlas-operator-api-key

kubectl delete deployment mongodb-atlas-operator

