class VisionsController < ApplicationController
  require 'httparty'

def analyze
  response = HTTParty.post("https://vision.googleapis.com/v1/images:annotate?key=#{ENV['GOOGLE_API_KEY']}",
                          body: vision_api_payload(params[:image_url]).to_json,
                          headers: {'Content-Type' => 'application/json'})

  puts response.body # or Rails.logger.info response.body

  render json: response.parsed_response
end

  private

  def vision_api_payload(image_url)
    {
      requests: [
        {
          features: [
            # Add features as per your requirement
            { type: "LABEL_DETECTION", maxResults: 50 },
            # ... other features ...
          ],
          image: { source: { imageUri: image_url } }
        }
      ]
    }
  end
end
