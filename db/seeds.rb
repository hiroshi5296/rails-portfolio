# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "学科を作成します"

# 学科の削除
Subject.delete_all

# 学科情報作成

Subject.create!(name: "IT学科", content: "楽しいところです", teacher: "井上")
Subject.create!(name: "現代ビジネス学科", content: "クラスの仲が良く、楽しいところです", teacher: "中田")
Subject.create!(name: "IT学科", content: "動物との触れ合いが多く、楽しいところです", teacher: "岸本")

# 学生情報
puts "学生を作成します"

# 学生を削除
Student.delete_all

# 学生情報を作成
Student.create!(name: "田中太郎", number: "JR1919", subject_id: "IT学科")
Student.create!(name: "鈴木次郎", number: "JS1903", subject_id: "IT学科")
Student.create!(name: "佐藤のり子", number: "AB1925", subject_id: "動物学科")
