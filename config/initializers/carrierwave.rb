CarrierWave.configure do |config|
  config.storage             = :qiniu
  config.qiniu_access_key    = ENV["F38HFE5FogMvc0JvHMDltga5yNYUrQMimLVrvTT1"]
  config.qiniu_secret_key    = ENV["WorF2Oz5LfPlmj5RgwFGEaDa8A6_d3JU7sJ96m8s"]
  config.qiniu_bucket        = ENV["bookstore"]
  config.qiniu_bucket_domain = ENV["oqnq4jj8y.bkt.clouddn.com"]
  config.qiniu_block_size    = 4*1024*1024
  config.qiniu_protocol      = "http"
  config.qiniu_up_host       = "http://up.qiniug.com"
end
