require "google/cloud/vision"


# Imports the Google Cloud client library
require "google/cloud/storage"

# Your Google Cloud Platform project ID
project_id = "insectifier"

# Instantiates a client
storage = Google::Cloud::Storage.new project_id: project_id

# The name for the new bucket
bucket_name = "my-new-bucket"

# Creates the new bucket
bucket = storage.create_bucket bucket_name

puts "Bucket #{bucket.name} was created."
image_annotator_client = Google::Cloud::Vision::ImageAnnotator.new
gcs_image_uri = "../../../assets/images/deer.png"
source = { gcs_image_uri: gcs_image_uri }
image = { source: source }
type = :LABEL_DETECTION
features_element = { type: type }
features = [features_element]
requests_element = { image: image, features: features }
requests = [requests_element]
response = image_annotator_client.batch_annotate_images(requests)
puts response

















# require 'rubygems'
# require 'rest_client'
# require 'json'

# site = "https://www.inaturalist.org"
# app_id = '592487bc494045269753754e5085bc4fdfc438a2baf4ae0f711ff8a9ddb559ab'
# app_secret = '7ae2cc4c20ce20862da0847615339a50f5717ae8b7da0f587fdf438cc1451092ap'
# redirect_uri = 'http://localhost:3000/' # you can set this to some URL you control for testing

# # REQUEST AN AUTHORIZATION CODE
# # Your web app should redirect the user to this url. They should see a screen
# # offering them the choice to authorize your app. If they aggree, they will be
# # redirected to your redirect_uri with a "code" parameter
# url = "#{site}/oauth/authorize?client_id=#{app_id}&redirect_uri=#{redirect_uri}&response_type=code"

# # REQUEST AN AUTH TOKEN
# # Once your app has that code parameter, you can exchange it for an access token:
# puts "Go to #{url}, approve the app, and you should be redirected to your " +
#   "redirect_uri. Copy and paste the 'code' param here."
# print "Code: "
# auth_code = gets.strip
# puts

# payload = {
#   :client_id => app_id,
#   :client_secret => app_secret,
#   :code => auth_code,
#   :redirect_uri => redirect_uri,
#   :grant_type => "authorization_code"
# }
# puts "POST #{site}/oauth/token, payload: #{payload.inspect}"
# puts response = RestClient.post("#{site}/oauth/token", payload)
# puts
# # response will be a chunk of JSON looking like
# # {
# #   "access_token":"xxx",
# #   "token_type":"bearer",
# #   "expires_in":null,
# #   "refresh_token":null,
# #   "scope":"write"
# # }

# # Store the token (access_token) in your web app. You can now use it to make authorized
# # requests on behalf of the user, like retrieving profile data:
# token = JSON.parse(response)["access_token"]
# headers = {"Authorization" => "Bearer #{token}"}
# puts "GET /users/edit.json, headers: #{headers.inspect}"
# puts RestClient.get("#{site}/users/edit.json", headers)
# puts
