class Test < ApplicationRecord
  has_many_attached :audio
  mount_uploader :file, AudioFileUploader
end
