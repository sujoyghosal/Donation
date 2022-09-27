#gcloud builds submit --tag gcr.io/PROJECT-ID/helloworld
PROJECT="donation"
gcloud init

gcloud builds submit --tag gcr.io/$PROJECT/api

gcloud run deploy --image gcr.io/$PROJECT/api
