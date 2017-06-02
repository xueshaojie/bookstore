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
Category.create(name: "文学")
Category.create(name: "数学")
Category.create(name: "管理")
#Product.create!(title: "黑客与画家",
#  description: "阳志平推荐",
  #price: 45,
#  amount: 50,
#  image: File.open(File.join(Rails.root, "/app/assets/images/b.jpg"))
  #image1: File.open(File.join(Rails.root, "/app/assets/images/b.jpg"))
  #image1: 'public/system/products/image1s/b.jpg'
  #image1: open("https://ww1.sinaimg.cn/large/006tNc79gy1ffrk1l5jfdj30af0dw0tn.jpg")
#  )

#Product.create!(title: "穷查理宝典",
#  category_id: 1,
#  description: "巴菲特推荐",
#  price: 50,
#  amount: 100,
#  image: File.open(File.join(Rails.root, "/app/assets/images/a.jpg"))
  #image1: File.open(File.join(Rails.root, "/app/assets/images/a.jpg"))
  # image1: 'public/system/products/image1s/a.jpg'
  #image1: open("https://ww1.sinaimg.cn/large/006tNc79gy1ffrk1l5jfdj30af0dw0tn.jpg")
#  )
#Product.create!(title: "刻意练习",
#  category_id: 3,
#  description: "abc推荐",
#  price: 100,
#  amount: 5,
#  image: File.open(File.join(Rails.root, "/app/assets/images/c.jpg"))
#  image1: File.open(File.join(Rails.root, "/app/assets/images/c.jpg"))
  # image1: 'public/system/products/image1s/c.jpg'
  #image1: open("https://ww1.sinaimg.cn/large/006tNc79gy1ffrk1l5jfdj30af0dw0tn.jpg")
#  )
