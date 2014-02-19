# encoding: utf-8

class FileUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{model.id}/#{mounted_as}"
  end

  #def extension_white_list
  #  model.batch_import_type.extensions_array
  #end
end
