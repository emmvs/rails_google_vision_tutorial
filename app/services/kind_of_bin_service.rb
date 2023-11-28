class KinsOfBinService
  bins = ["green", "yellow", "black"]

  # Request to openAi and asking them to figure where the response from the google Api should go
  "Where should this piece of trash be disposed #{GoogleApiService.new(url).response}"

  return "ChatGPt Answer: This #{GoogleApiService.new(url).response} should be disposed in this bin"
end
