# GKE Standard Cluster Provisioning with Terraform 🚀

This repository provides a Terraform configuration to provision one or more Google Kubernetes Engine (GKE) Standard clusters. The configuration allows you to define machine types, the number of nodes, network settings, and create a custom Service Account.

## Requirements 📋

Before you begin, ensure you have the following prerequisites:

- A Google Cloud account with billing enabled.
- Terraform installed on your local machine.
- Google Cloud SDK (gcloud) installed for managing your GCP resources.

## APIs to Enable 🔌

Before provisioning the GKE cluster, make sure the following Google Cloud APIs are enabled:

- **Kubernetes Engine API**: `container.googleapis.com`
- **Compute Engine API**: `compute.googleapis.com`
- **Cloud Logging API** (optional): `logging.googleapis.com`
- **Cloud Monitoring API** (optional): `monitoring.googleapis.com`
- **Cloud Storage API** (if using GCS): `storage.googleapis.com`
- **IAM API** (optional, but frequently necessary): `iam.googleapis.com`