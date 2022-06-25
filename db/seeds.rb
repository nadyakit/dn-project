Post.destroy_all
Appeal.destroy_all
Category.destroy_all
Section.destroy_all
User.destroy_all
puts "Destroyed everything you touch"

user_natalia = User.create!({
  name: "Наталья",
  surname: "Столярова",
  email: "test@gmail.com",
  password: "123456",
  username: "username"
})

# appeals = [
# {
# 	author: "Наталья Столярова",
# 	email: "ntsh.stol@mail.ru",
# 	content: "Добрый день! Мне было бы интересно узнать больше информации не о витаминном составе отдельных продуктов, а об усваимости их витаминов в сочетании с другими продуктами, а также всякие малоизвестные нюансы. Например, есть жирорастворимые витамины -> овощи, в которых они содержатся, лучше есть с маслом/майонезом (в салате). Пожалуйста, осветите данную тему в своих материалах!",
# 	data: "10.12.21"
# }
# ]

category = Category.create!(
  {
    name: "category",
    description: "category description",
    author: "category author"
  }
)

section = Section.create!(
  {
    name: "section",
  }
)

posts = [
{
  section: section,
  category: category,
	image: File.open(Rails.root.join('public', 'images', 'pic-1.jpg')),
	name: "Витамины",
	title: "Откуда брать витамин С зимой?",
	content: "На самом деле существует много продуктов помимо апельсинов, мандаринов и лимонов, которые содержат витамин С, который так необходим в прохладную погоду. Например, в шиповнике содержится 650 мг витамина С на 100 гр продукта, что составляет 929% от суточной нормы употребления. Вот ещё несколько вариантов: облепиха — 286%, болгарский перец — 286%, смородина чёрная — 286%, киви — 267%, сушёные белые грибы — 214%, петрушка — 214%, брюссельская капуста — 143%.<br>Замороженые ягоды также можно смело покупать, но главное — обращать на способ заморозки. Она должна быть достаточно быстрой и выполняться при температуре не менее -25°С. В таком случае, вода, содержащаяся в плодах, не успеет сформировать крупные кристаллы льда, способные повредить клетку, и тогда в продуктах сохраняется наибольшее количество витаминов и прочих полезных веществ."
},
{
  section: section,
  category: category,
	image: File.open(Rails.root.join('public', 'images', 'pic-2.jpg')),
	name: "Супер быстрый рецепт",
	title: "Пряный латте со свежей тыквой ",
	content: "Главный ингредиент напитка — пюре из тыквы. Оно продаётся и в готовом виде, но при желании его можно сделать и дома. Несколько кусочков свежей тыквы помещают в духовку на время от 30 до 40 минут, после чего доводят блендером до состояния однородной массы.<br><br>Для приготовления напитка нужно:<br><ul><li>добавить в пюре специи (корицу, гвоздику, немного мускатного ореха);</li><li>чёрный перец (будет достаточно одной щепотки);</li><li>нагревать смесь на медленном огнев течение двух минут;</li><li>добавить 2 столовых ложки сахара;</li><li>перемешать, не снимая с огня;</li><li>«дотомить» смесь до состояния сиропа;</li><li>добавить в неё 2 чашки подогретого молока;</li><li>взбить смесь до пены;</li><li>смешать напиток с 1/4 чашки эспрессо;</li><li>украсить латте сливками (¼ чашки).</li></ul><br><br>При желании можно добавить в латте немного ванили."
},
{
  section: section,
  category: category,
	image: File.open(Rails.root.join('public', 'images', 'pic-3.jpg')),
	name: "Нужно больше белка!",
	title: "В каких продуктах белка больше, чем в курице?",
	content: "Белки необходимы прежде всего для формирования мышц, костей и других тканей, а также для хорошего состояния кожи и волос. Кроме того, белки образуют многие важные аминокислоты, которые необходимы человеческому организму для переработки пищи. По данным Википедии, норма белка для женщин составляет 58 до 87 граммов в сутки, для мужчин — от 65 до 117 граммов в сутки.<br><br>Итак, вот список 10-ти продуктов с высоким содержанием белка:<br><ul><li>творог</li><li>сыр</li><li>греческий йогурт</li><li>яичный белок</li><li>тунец</li><li>молоко</li><li>гречка</li><li>бобовые</li><li>орехи</li></ul><br><br>Однако избыток белка также не лучшим образом влияет на состояние организма. Организм человека не может сохранять избыток белка про запас, поэтому усиливается нагрузка на печень, которая отвечает за переработку белка."
},
{
  section: section,
  category: category,
	image: File.open(Rails.root.join('public', 'images', 'pic-4.jpg')),
	name: "Витамины",
	title: "Витамин А",
	content: "Витамин А, или ретинол — жизненно необходим для нашего организма. Он отвечает за здоровье глаз, иммунную систему и влияет на синтез белков.<br><br>Больше всего витамина А содержится в следующих продуктах:<ul><li>рыбий жир, черная/красная икра</li><li>печень говяжья</li><li>яичный желток</li><li>сливочное масло, твердый сыр</li><li>морковь, болгарский перец, спаржа, брокколи сельдерей</li><li>петрушка, укроп, шпинат, щавель, кинза, зеленый лук, порей, базилик</li><li>курага</li><li>абрикосы, сливы</li><li>рябина, урюк, шиповник, облепиха</li></ul>"
},
{
  section: section,
  category: category,
	image: File.open(Rails.root.join('public', 'images', 'pic-5.jpg')),
	name: "Орехи",
	title: "Фисташки",
	content: "Помимо прекрасного дополнения к пенным напиткам у фисташек есть положительных свойств.<br><br>Магний, фосфор, цинк, витамины группы В — неполный список того, чем полезны фисташки.<br><br>Кроме того, в них содержится селен: он стимулирует иммунитет и, если на организм действуют соли тяжелых металлов, предотвращает отравление.<br><br>Фисташковое масло помогает избавиться от пигментных пятен и веснушек, делает кожу мягче. Дело в лютеине, который входит в его состав: это антиоксидант, который к тому же укрепляет зрение. Лютеин — почти светофильтр, защищающий сетчатку от разрушения.<br><br>Один из главных элементов — B7, или биотин, который позволяет усваивать белок и сжигать жиры, то есть является ключевым в обмене веществ. Если биотина не хватает, то страдают волосы и кожа, появляется депрессивное настроение, может вырасти плохой холестерин в крови."
},
{
  section: section,
  category: category,
	image: File.open(Rails.root.join('public', 'images', 'pic-6.jpg')),
	name: "Грибы",
	title: "Какие витамины содержатся в шампиьнонах?",
	content: "Шампиньоны очень полезны для организма. Они состоят на 90% из воды, а всё остальное — полезные минералы, такие как железо, цинк, кальций, йод, фосфор, рубидий и олово. Помимо этого, шампиньоны обогащены большим количеством витаминов, в их состав входят: витамины В1, В2, В6, В12, D6, D12 никотиновая и пантотеновая кислоты, биотонин и др.<br><br>Шампиньоны содержат в большом количестве белок и железо, при этом являются очень низкокалорийным продуктом. Именно поэтому они незаменимы для вегетарианцев и очень полезны для тех, кто сидит на диетах, а также для людей, страдающих анемией и сахарным диабетом.<br><br>К вреду шампиньонов можно отнести тот факт, что они, как и любые другие грибы способны накапливать вредные тяжелые металлы, такие как свинец, в особенности это касается постаревших грибов. Что б уберечь себяот этого негативного свойства, покупайте грибы в проверенных местах и всегда выбирайте свежие шампиньоны. А также, лучше не давайте их детям до 7 лет."
}
]

posts.each do |post|
	user_natalia.posts.create!(post)
	# puts "Some magic just create a #{ postik.name } with id #{ postik.id }!"
end

# appeals.each do |appeal|
# 	Appeal.create!(appeal)
# 	# puts "Some magic just create a #{ appealik.author } with id #{ appealik.id }!"
# end
