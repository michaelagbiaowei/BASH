# Define the name of your Kind cluster (change as needed)
CLUSTER_NAME="my-kind-cluster"

# Check if Kind is installed, and if not, install it
if ! command -v kind &> /dev/null; then
  echo "Kind is not installed. Installing Kind..."
  curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64
  chmod +x ./kind
  sudo mv ./kind /usr/local/bin/kind
fi

# Check if the cluster with the given name already exists
if kind get clusters | grep -q "$CLUSTER_NAME"; then
  echo "Cluster '$CLUSTER_NAME' already exists. Deleting the existing cluster..."
  kind delete cluster --name "$CLUSTER_NAME"
fi

# Create a new Kind cluster
echo "Creating Kind cluster '$CLUSTER_NAME'..."
kind create cluster --name "$CLUSTER_NAME"

# Get the kubeconfig for the cluster
KUBECONFIG_PATH=~/.kube/config

# Set the kubeconfig context to use the new cluster
kubectl config use-context "kind-$CLUSTER_NAME" --kubeconfig "$KUBECONFIG_PATH"

# Verify cluster status
kubectl cluster-info

echo "Kind cluster '$CLUSTER_NAME' is deployed and ready for use."
echo "Kubeconfig is available at: $KUBECONFIG_PATH"

