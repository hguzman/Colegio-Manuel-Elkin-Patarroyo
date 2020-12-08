class Tarea < ApplicationRecord
  #mount_uploader :adjunto, FileUploader
  belongs_to :user
end
