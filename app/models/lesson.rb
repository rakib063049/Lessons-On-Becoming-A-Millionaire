class Lesson < ActiveRecord::Base
  #include AASM

  attr_accessible :title, :vimeo_link, :video_length, :summary, :action_steps, :transcript, :faq, :subscription, :photo, :category_id, :instructor_id

  has_and_belongs_to_many :courses
  belongs_to :instructor
  belongs_to :category
  has_attached_file :photo , :styles => {:small => '150*150'}

=begin
  aasm do
    state :pending, :initial => true
    state :converting
    state :converted, :enter => :set_new_filename
    state :error

    event :convert do
      transitions :from => :pending, :to => :converting
    end

    event :converted do
      transitions :from => :converting, :to => :converted
    end

    event :failed do
      transitions :from => :converting, :to => :error
    end

    def convert
      self.convert!
      success = system(convert_command)
      if success && $?.exitstatus == 0
        self.converted!
      else
        self.failed!
      end
    end

  end

  protected

# This method creates the ffmpeg command that we'll be using
  def convert_command
    flv = File.join(File.dirname(video.path), "#{id}.flv")
    File.open(flv, 'w')

    command = <<-end_command
    ffmpeg -i #{ video.path } -ar 22050 -ab 32 -acodec mp3
  -s 480x360 -vcodec flv -r 25 -qscale 8 -f flv -y #{ flv }
    end_command
    command.gsub!(/\s+/, " ")
  end

# This update the stored filename with the new flash video file
  def set_new_filename
    update_attribute(:video_file_name, "#{id}.flv")
  end
=end
end
