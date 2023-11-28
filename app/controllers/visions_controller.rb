class VisionsController < ApplicationController
  def analyze
    @result = GoogleApiService.analyze_image(params[:image_url])
    # render "visions/vision_analyze"
    redirect_to root_path(result: @result)
  end

  def vision_analyze
    @trash = params[:result]
  end
end
