if Rails.env.test? # Store the files locally for test environment
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end
end

#NOTA: Descomentar esto si se esta utilizando un Amazon Web Services S3 como almacenamiento de archivos
#y digitar las llaves respectivas en los espacios  
# :aws_access_key_id => 'XXXXXXXXXXXXXXXXXXXXXXXXXXXX'
# :aws_secret_access_key => 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
# asi como tambien el directorio respectivo en config.fog_directory = 'tecla-cultura' # required
#if Rails.env.development? or Rails.env.production? # Using Amazon S3 for Development and Production
#  CarrierWave.configure do |config|
#    config.root = Rails.root.join('tmp')
#    config.cache_dir = 'uploads'
#
#    config.storage = :fog
#    config.fog_credentials = {
#        :provider => 'AWS', # required
#        :aws_access_key_id => 'XXXXXXXXXXXXXXXXXXXXXXXXXXXX', # required
#        :aws_secret_access_key => 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', # required
#    }
#    config.fog_directory = 'j360' # required
#  end
#end