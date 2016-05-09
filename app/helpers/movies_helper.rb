module MoviesHelper
  def embed_video(video_url)
    video_id = video_url.split("=").last
    content_tag(:div, class: "video-container") do
      content_tag(:iframe, nil, frameborder: "0", src: "https://www.youtube.com/embed/#{video_id}")
    end
  end
end
