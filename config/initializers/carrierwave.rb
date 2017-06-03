CarrierWave.configure do |config|
  #  config.storage             = :qiniu
  #  config.qiniu_access_key    = ENV["HIS34ruiqlzti-BKZ5pJ3qiulFPc3DOqM8y3Kocc"]
  #  config.qiniu_secret_key    = ENV["FIOyGjMcvEm0T_rP8ErVgFfQdgR14Di0ztKHdF_H"]
  #  config.qiniu_bucket        = ENV["bookstore"]
  #  config.qiniu_bucket_domain = ENV["oqnq4jj8y.bkt.clouddn.com"]
  #  config.qiniu_block_size    = 4*1024*1024
  #  config.qiniu_protocol      = "http"
    config.storage             = :qiniu
    config.qiniu_access_key    = ENV["qiniu_access_key"]
    config.qiniu_secret_key    = ENV["qiniu_secret_key"]
    config.qiniu_bucket        = ENV["qiniu_bucket"]
    config.qiniu_bucket_domain = ENV["qiniu_bucket_domain"]
    config.qiniu_block_size    = 4*1024*1024
    config.qiniu_protocol      = "http"
    config.qiniu_up_host       = "http://up.qiniug.com"
 end

# require 'carrierwave/storage/abstract'
# require 'carrierwave/storage/file'
# require 'carrierwave/storage/fog'

# CarrierWave.configure do |config|
  # if Rails.env.production?
    # config.storage :fog
    # config.fog_provider = 'fog'
    # config.fog_credentials = {
      # provider:              'AWS',
      # aws_access_key_id:     ENV["AWS_ACCESS_KEY_ID"],      # 你的 key
      # aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],      # 你的 secret key
      # region:                'ap-northeast-1' # 你的 S3 bucket 的 Region 位置
    # }

    # config.fog_directory  = ENV["AWS_BUCKET_NAME"] # 你设定的 bucket name
  # else
    # config.storage :file
  # end
# end
