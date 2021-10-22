Post.destroy_all
puts "Destroyed everything you touch"

posts = [
{
	image: File.open(Rails.root.join('public', 'images', 'pic-1.jpg')),
	name: "Витамины",
	title: "Откуда брать витамин С зимой?",
	content: "Tracklist"
},
{
	image: File.open(Rails.root.join('public', 'images', 'pic-2.jpg')),
	name: "Супер быстрый рецепт",
	title: "Пряный латте со свежей тыквой ",
	content: "Some Old Tracklist"
},
{
	image: File.open(Rails.root.join('public', 'images', 'pic-3.jpg')),
	name: "Нужно больше белка!",
	title: "В каких продуктах белка больше, чем в курице?",
	content: "Some Old Tracklist"
},
{
	image: File.open(Rails.root.join('public', 'images', 'pic-4.jpg')),
	name: "Витамины",
	title: "Витамин А",
	content: "Some Old Tracklist"
},
{
	image: File.open(Rails.root.join('public', 'images', 'pic-5.jpg')),
	name: "Орехи",
	title: "Фисташки",
	content: "Some Old Tracklist"
},
{
	image: File.open(Rails.root.join('public', 'images', 'pic-6.jpg')),
	name: "Грибы",
	title: "Какие витамины содержатся в шампиьнонах?",
	content: "Some Old Tracklist"
}
]

posts.each do |post|
	postik = Post.create(post)
	puts "Some magic just create a #{ postik.name } with id #{ postik.id }!"
end
