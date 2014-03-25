class VideosController < ApplicationController
  def new
    @video = Video.new
  end

  def caption
  end

  def create
    @video = Video.new(video_params)
    if @video.save
      redirect_to notnice_path
    else
      redirect_to new_video_path
    end
  end

  def video_params
    params.require(:video).permit(
      :url
    )
  end
end
