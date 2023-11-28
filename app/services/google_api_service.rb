class GoogleApiService
  require 'httparty'

  def self.analyze_image(image_url)
    response = HTTParty.post("https://vision.googleapis.com/v1/images:annotate?key=#{ENV['GOOGLE_API_KEY']}",
                            body: vision_api_payload(image_url).to_json,
                            headers: {'Content-Type' => 'application/json'})

    parsed_response = response.parsed_response
    trash = find_info(parsed_response)
    p trash[0]["name"] 
  end

  private

  def self.vision_api_payload(image_url)
    {
      requests: [
        {
          features: [
            { type: "LABEL_DETECTION", maxResults: 10 },
            { type: "OBJECT_LOCALIZATION", maxResults: 10 }
            # ... other features ...
          ],
          image: { source: { imageUri: image_url } }
        }
      ]
    }
  end

  def self.find_info(parsed_response)
    return { error: "No response data" } if parsed_response["responses"].nil?

    info = parsed_response["responses"].first["localizedObjectAnnotations"]
    info || { error: "Trash not found" }
  end
end
