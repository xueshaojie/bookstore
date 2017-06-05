# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "test@gmail.com", password: "123456", password_confirmation: "123456", is_admin: false)
User.create(email: "admin@gmail.com", password: "123123", password_confirmation: "123123", is_admin: true)
Category.create(name: "投资")
Category.create(name: "计算机")
Category.create(name: "个人成长")
#Category.create(name: "文学")
#Category.create(name: "数学")
#Category.create(name: "管理")

Product.create!(title: "穷查理宝典",
  category_id: 1,
  author:"查理·芒格",
  amount: 100,
  price: 125.0,
  description: "《穷查理宝典》首次收录了查理过去20年来主要的公开演讲，书中十一篇讲稿全面展现了这个传奇人物的聪明才智。",
  image: open("https://ww1.sinaimg.cn/large/006tNc79gy1ffrk1l5jfdj30af0dw0tn.jpg")
)

Product.create!(title: "刻意练习",
  category_id: 3,
  author: "安德斯·艾利克森",
  amount: 100,
  price: 29.5,
  description: "杰出不是一种天赋，而是一种人人都可以学会的技巧！迄今发现的最强大学习法，成为任何领域杰出人物的黄金法则！",
  image: open("https://ws1.sinaimg.cn/large/006tNc79gy1fga9s81y1xj30lc0sewmp.jpg")
)
Product.create!(title: "黑客与画家",
  category_id: 2,
  author: "Paul Graham",
  amount: 100,
  price: 38.8,
  description: "《黑客与画家:硅谷创业之父Paul Graham文集》适合所有程序员和互联网创业者，也适合一切对计算机行业感兴趣的读者。",
  image: open("https://ws2.sinaimg.cn/large/006tNc79gy1fga9zxbsysj308h0cdaak.jpg")
)
Product.create!(title: "精进",
  category_id: 3,
  author: "采铜",
  amount: 100,
  price: 25.9,
  description: "精进：如何成为一个很厉害的人》：继《开放的智力》《深度学习的艺术》的热销后，知乎大神采铜带来自己的全新力作——《精进：如何成为一个很厉害的人》。",
  image: open("https://ws1.sinaimg.cn/large/006tNc79gy1fga9wznsxvj30go0p0aay.jpg")
)
Product.create!(title: "智能时代",
  category_id: 2,
  author: "吴军",
  amount: 100,
  price: 48.4,
  description: "《智能时代：大数据与智能革命重新定义未来》大数据和人工智能迅猛发展，对社会和商业的影响日益深刻，从学术界到企业界，智能化浪潮的来临，已经成为共识。",
  image: open("https://ws1.sinaimg.cn/large/006tNc79gy1fgaa5o86saj30go0nzgq6.jpg")
)
Product.create!(title: "思考,快与慢",
  category_id: 3,
  author: "丹尼尔·卡尼曼",
  amount: 100,
  price: 55.0,
  description: "诺贝尔经济学奖得主丹尼尔·卡尼曼十年磨一剑之作，彻底颠覆你对思考的看法。在书中，卡尼曼会带领我们体验一次思维的创新之旅。",
  image: open("https://ws1.sinaimg.cn/large/006tNc79gy1fgaadvudrbj30ii0m1aaa.jpg")
)
Product.create!(title: "必然",
  category_id: 2,
  author: "凯文·凯利",
  amount: 100,
  price: 37.5,
  description: "《必然》内容简介：人类的生活无时无刻不在改变，在当下，能最快、最激烈地促进这些改变的，就是科技。",
  image: open("https://ws2.sinaimg.cn/large/006tNc79gy1fgaahwoa1ej31bq1z4qog.jpg")
)
Product.create!(title: "巴菲特的投资组合",
  category_id: 1,
  author: "罗伯特.哈格斯特朗",
  amount: 100,
  price: 24.2,
  description: "本书讲述了沃伦·巴菲特的选股策略在过去的20年里几乎没有什么改变。他考虑的顺序总是选择公司、公司的管理状况、财务业绩以及现行价格。",
  image: open("https://ws3.sinaimg.cn/large/006tNc79gy1fgaatpb0zvj30b40go3zg.jpg")
)
