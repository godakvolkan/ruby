# Veritabanını temizle
User.destroy_all
Category.destroy_all
Post.destroy_all
Comment.destroy_all
Tag.destroy_all

puts "Veriler temizlendi!"

# Kullanıcılar oluştur
user1 = User.create!(
  name: "Ahmet Yılmaz",
  email: "ahmet@example.com",
  password: "password123",
  password_confirmation: "password123"
)

user2 = User.create!(
  name: "Ayşe Demir",
  email: "ayse@example.com",
  password: "password123",
  password_confirmation: "password123"
)

puts "2 kullanıcı oluşturuldu!"

# Kategoriler oluştur
tech = Category.create!(
  name: "Teknoloji",
  description: "Teknoloji ile ilgili yazılar"
)

lifestyle = Category.create!(
  name: "Yaşam",
  description: "Yaşam tarzı ile ilgili yazılar"
)

travel = Category.create!(
  name: "Seyahat",
  description: "Seyahat deneyimleri"
)

puts "3 kategori oluşturuldu!"

# Etiketler oluştur
tag1 = Tag.create!(name: "Ruby")
tag2 = Tag.create!(name: "Rails")
tag3 = Tag.create!(name: "API")
tag4 = Tag.create!(name: "Sağlık")
tag5 = Tag.create!(name: "Macera")

puts "5 etiket oluşturuldu!"

# Postlar oluştur
post1 = Post.create!(
  title: "Ruby on Rails ile API Geliştirme",
  content: "Rails API modunda harika projeler geliştirebilirsiniz...",
  published: true,
  user: user1,
  category: tech,
  tags: [tag1, tag2, tag3]
)

post2 = Post.create!(
  title: "Sağlıklı Yaşam İpuçları",
  content: "Her gün düzenli egzersiz yapmak çok önemli...",
  published: true,
  user: user2,
  category: lifestyle,
  tags: [tag4]
)

post3 = Post.create!(
  title: "Kapadokya Seyahat Rehberi",
  content: "Kapadokya'da görülmesi gereken yerler...",
  published: true,
  user: user1,
  category: travel,
  tags: [tag5]
)

puts "3 post oluşturuldu!"

# Yorumlar oluştur
Comment.create!(
  content: "Çok faydalı bir yazı olmuş, teşekkürler!",
  user: user2,
  post: post1
)

Comment.create!(
  content: "Bu bilgileri uygulayacağım.",
  user: user1,
  post: post2
)

Comment.create!(
  content: "Kapadokya'yı çok merak ediyordum!",
  user: user2,
  post: post3
)

puts "3 yorum oluşturuldu!"

puts "\n✅ Seed verileri başarıyla oluşturuldu!"
puts "📊 Özet:"
puts "   - #{User.count} kullanıcı"
puts "   - #{Category.count} kategori"
puts "   - #{Post.count} post"
puts "   - #{Comment.count} yorum"
puts "   - #{Tag.count} etiket"
