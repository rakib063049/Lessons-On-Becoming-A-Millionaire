class Lesson < ActiveRecord::Base
  attr_accessible :title,  :vimeo_link,  :video_length,  :summary,  :action_steps,  :transcript,  :faq,  :subscription
end
