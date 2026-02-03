# This comes from the examples in the docs:
# https://www.mongodb.com/docs/atlas/cli/current/command/atlas-clusters-create/#examples

# Modify further to use options available in Atlas for Government.
# Region codes are here: https://www.mongodb.com/docs/atlas/cloud-providers-regions/

atlas cluster create test-cli-cluster --projectId <PROJECT_ID> --provider AWS --region US_EAST_1 --members 3 --tier M20 --mdbVersion 8.0 --diskSizeGB 10

# To delete:
# https://www.mongodb.com/docs/atlas/cli/current/command/atlas-clusters-delete/
# Might need to add a the force option and the project ID
# atlas cluster delete test-cli-cluster

