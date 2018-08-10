class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  # Remove everything else
end

rails g migration AddPhotoToCocktails photo:string
rails db:migrate
