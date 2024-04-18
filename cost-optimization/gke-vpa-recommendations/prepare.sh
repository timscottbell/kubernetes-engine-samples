export PROJECT_ID=liferaycloud-qa
export REGION=us-central1
export ZONE=us-central1-f
export IMAGE=$REGION-docker.pkg.dev/$PROJECT_ID/main/vpa-recs-image:latest
gcloud config set project $PROJECT_ID
gcloud config set compute/region $REGION
gcloud config set compute/zone $ZONE

export TF_VAR_BIGQUERY_DATASET=gke_metrics_dataset
export TF_VAR_BIGQUERY_TABLE=gke_metrics
export TF_VAR_RECOMMENDATION_WINDOW_SECONDS=2592000
export TF_VAR_RECOMMENDATION_DISTANCE=86400
export TF_VAR_LATEST_WINDOW_SECONDS=600
export TF_VAR_METRIC_WINDOW=2592000
export TF_VAR_METRIC_DISTANCE=600