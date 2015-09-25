class VideoClue < ActiveRecord::Base
  belongs_to :question

  def video_url
  	    '<iframe id="video" src="https://www.youtube.com/embed/'+youtube_id+'?start='+time.to_s+'&autoplay=1&showinfo=0&controls=0" frameborder="0" allowfullscreen></iframe>'
  end
end
