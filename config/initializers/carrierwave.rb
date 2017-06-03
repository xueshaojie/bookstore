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
end
