class LinkedFile < ActiveRecord::Base
  mount_uploader :file, FileUploader

  belongs_to :upload, inverse_of: :linked_files

  attr_accessible :file, :filename, :mime_type, :file_cache, :remove_file

  validates :filename, presence: true, length: { maximum: 255 }
  validates :mime_type, presence: true, length: { maximum: 255 }
end
