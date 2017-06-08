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
  image: open("http://ws1.sinaimg.cn/large/006tNc79gy1fga9wznsxvj30go0p0aay.jpg")
)
