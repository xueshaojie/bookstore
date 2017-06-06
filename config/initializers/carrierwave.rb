CarrierWave.configure do |config|
  config.storage             = :qiniu
  config.qiniu_access_key    = ENV["oLrzyKW99Ja4Eiguujl0u459Qt6RxNmaj0SukqA8"]
  config.qiniu_secret_key    = ENV["y_dYwghS4AmmYbiBFdmfrZ4xjyqMepyk7GgdXbFl"]
  config.qiniu_bucket        = ENV["bookstore"]
  config.qiniu_bucket_domain = ENV["oqnq4jj8y.bkt.clouddn.com"]
  config.qiniu_block_size    = 4*1024*1024
  config.qiniu_protocol      = "http"
  config.qiniu_up_host       = "http://up.qiniug.com"
end
