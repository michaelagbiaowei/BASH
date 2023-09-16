#!/usr/bin/env bash

# Step 1:
# Define the name of the Kind cluster
CLUSTER_NAME="my-cluster"

# Step 2:
# Check if Kind is installed, and if not, install it
if ! command -v kind &> /dev/null; then
  echo "Kind is not installed. Installing Kind..."

# Step 3:
# Download the Kind binary from https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64
  curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64

# Step 4:
# Make the Kind binary executable
  chmod +x ./kind

# Step 5:
# Move the Kind binary to a directory in the system's PATH
  sudo mv ./kind /usr/local/bin/kind
fi

# Step 6:
# Check if the cluster with the given name already exists
if kind get clusters | grep -q "$CLUSTER_NAME"; then
  echo "Cluster '$CLUSTER_NAME' already exists. Deleting the existing cluster..."

# Step 7:
# If the cluster name exits then Delete the existing Kind cluster
  kind delete cluster --name "$CLUSTER_NAME"
fi

# Step 8:
# Create a new Kind cluster
echo "Creating Kind cluster '$CLUSTER_NAME'..."
kind create cluster --name "$CLUSTER_NAME"

# Step 9:
# Get the kubeconfig for the cluster
KUBECONFIG_PATH=$([[ ! -z "$KUBECONFIG" ]] && echo "$KUBECONFIG" || echo "$HOME/.kube/config")

# Step 10:
# Set the kubeconfig context to use the new cluster
kubectl config use-context "kind-$CLUSTER_NAME" --kubeconfig "$KUBECONFIG_PATH"

# Step 11:
# Verify cluster status
kubectl cluster-info

# Step 12:
# Print cluster deployment completion messages
echo "Kind cluster '$CLUSTER_NAME' is deployed and ready for use."
echo "Kubeconfig is available at: $KUBECONFIG_PATH"
