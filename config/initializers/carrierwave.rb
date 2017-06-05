CarrierWave.configure do |config|
    config.storage             = :qiniu
    config.qiniu_access_key    = ENV["NvUplOFouFIWjvqztMBoFlBVu0VkuWyArXfGG4TD"]
    config.qiniu_secret_key    = ENV["g9QjdWFVKEB7dpp6iqn-0NMnqe6jyr-Ak1Ebjh48"]
    config.qiniu_bucket        = ENV["bookstore"]
    config.qiniu_bucket_domain = ENV["oqnq4jj8y.bkt.clouddn.com"]
    config.qiniu_block_size    = 4*1024*1024
    config.qiniu_protocol      = "http"
    config.qiniu_up_host       = "http://up.qiniug.com"
end
