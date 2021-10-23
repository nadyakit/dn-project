Post.destroy_all
puts "Destroyed everything you touch"

posts = [
{
	image: File.open(Rails.root.join('public', 'images', 'pic-1.jpg')),
	name: "Витамины",
	title: "Откуда брать витамин С зимой?",
	content: "На самом деле существует много продуктов помимо апельсинов, мандаринов и лимонов, которые содержат витамин С, который так необходим в прохладную погоду. Например, в шиповнике содержится 650 мг витамина С на 100 гр продукта, что составляет 929% от суточной нормы употребления. Вот ещё несколько вариантов: облепиха — 286%, болгарский перец — 286%, смородина чёрная — 286%, киви — 267%, сушёные белые грибы — 214%, петрушка — 214%, брюссельская капуста — 143%.<br>Замороженые ягоды также можно смело покупать, но главное — обращать на способ заморозки. Она должна быть достаточно быстрой и выполняться при температуре не менее -25°С. В таком случае, вода, содержащаяся в плодах, не успеет сформировать крупные кристаллы льда, способные повредить клетку, и тогда  в продуктах сохраняется наибольшее количество витаминов и прочих полезных веществ."
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
