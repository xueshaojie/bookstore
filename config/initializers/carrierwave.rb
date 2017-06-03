require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Rails.env.production?
   config.fog_provider = 'fog'
   config.storage             = :qiniu
   config.qiniu_access_key    = ENV["HIS34ruiqlzti-BKZ5pJ3qiulFPc3DOqM8y3Kocc"]
   config.qiniu_secret_key    = ENV["FIOyGjMcvEm0T_rP8ErVgFfQdgR14Di0ztKHdF_H"]
   config.qiniu_bucket        = ENV["bookstore"]
   config.qiniu_bucket_domain = ENV["oqnq4jj8y.bkt.clouddn.com"]
   config.qiniu_block_size    = 4*1024*1024
   config.qiniu_protocol      = "http"
   config.qiniu_up_host       = "http://up.qiniug.com"  #选择不同的区域时，up.qiniug.com 不同
  else
    config.storage :file
  end
end
