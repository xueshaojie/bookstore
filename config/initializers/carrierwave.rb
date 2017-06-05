CarrierWave.configure do |config|
    config.storage             = :qiniu
    config.qiniu_access_key    = ENV["qNWUPFkb-NqV_G76cd5tJIULSb5wRXz6DZql8Rzu"]
    config.qiniu_secret_key    = ENV["fKc8laGx8xd6IEkzDDnbpNwPwSJsOwVKM2gPAUJ9"]
    config.qiniu_bucket        = ENV["bookstore"]
    config.qiniu_bucket_domain = ENV["oqnq4jj8y.bkt.clouddn.com"]
    config.qiniu_block_size    = 4*1024*1024
    config.qiniu_protocol      = "http"
    config.qiniu_up_host       = "http://up.qiniug.com"
end
