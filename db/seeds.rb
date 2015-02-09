# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
<<<<<<< HEAD
#   cities = City.build([{ name: 'Chicago' , { name: 'Copenhagen' ])
#   Mayor.build(name: 'Emanuel', city: cities.first)
#  Category.build(Name: 'Trekking', Description: 'vsdvfhjsfdskfdjgfjdgfjdgfdjfgjdhsg', Order: '1, icon: 'trek-icon.png', slug: 'trekking')
# Category.build(Name: 'Tourism', Description: 'vsdvfhjsfdskfdjgffgfgjdgfjdgfdjfgjdhsg', Order: '2', icon: 'tour-icon.png', slug: 'tourism')
# Category.build(Name: 'Culture', Description: 'vsdvfhjsfdskfdjgfgfgjdgfjdgfdjfgjdhsg', Order: '3', icon: 'culture-icon.png', slug: 'culture')
# Category.build(Name: 'Business', Description: 'vsdvfhjsfdskfdjgdggdsfjdgfjdgfdjfgjdhsg', Order: '4', icon: 'business-icon.png', slug: 'business')
# Category.build(Name: 'Legal', Description: 'vsdvfhjsfdskfdjgfjdsdsfsgfjdgfdjfgjdhsg', Order: '5', icon: 'law-icon.png', slug: 'legal')
# Category.build(Name: 'Visa', Description: 'vsdvfhjsfdskfdjgfjdgfffjdgfdjfgjdhsg', Order: '6', icon: 'visa-icon.png', slug: 'visa')


category0=Category.new(:Name => 'Trekking', :Description => '<h5>Trekking in Nepal</h5><div class="border"></div><p>With eight of the top ten highest summits in the world and some of the most beautiful landscapes which are only reachable on foot, trekking in Nepal is one of the unique experiences of Asia. Trekking is the most popular activity in Nepal, and travellers will be bombarded on the streets of Kathmandu and the trekking hub, Pokhara, with guides, organised tours and gear for sale or rent. The huge variety of options allows for people of many ages and capabilities to attempt a trek in the country. While you could spend a year planning an expedition to wild and lofty places that few would dare attempt, you could also arrive in Kathmandu with no plans and be on the trail in a matter of days. </p>', :icon => 'trek-icon.png', :slug => 'trekking', :Order => 1)

category0.save

item0=category0.items.new(:Name => 'Trekking', :Description => '<h5>Trekking in Nepal</h5><div class="border"></div><p>With eight of the top ten highest summits in the world and some of the most beautiful landscapes which are only reachable on foot, trekking in Nepal is one of the unique experiences of Asia. Trekking is the most popular activity in Nepal, and travellers will be bombarded on the streets of Kathmandu and the trekking hub, Pokhara, with guides, organised tours and gear for sale or rent. The huge variety of options allows for people of many ages and capabilities to attempt a trek in the country. While you could spend a year planning an expedition to wild and lofty places that few would dare attempt, you could also arrive in Kathmandu with no plans and be on the trail in a matter of days. </p>', :Order =>1)

item0.save

images0=item0.images.new(:Name => 'pic', :Content => 'many trekkers prefer to overnight at one of the lower villages on their way to Ghorepani, covering the distance over two days owing to the steepness of the trail, the increase in altitude and the beauty of the natural surroundings', :Order =>1, :image =>'/uploads/image/image/1/trek3.png')

image0.save

descriptions0=item0.descriptions.new(:Name => 'trek', :Content => 'The place used to be a rest stop where ancient traders found water (pani in Nepali) for their horses (ghora in Nepali) thus leading to the nomenclature Ghorepani.', :Order =>1)

description0.save

item1=category0.items.new(:Name => 'Trekking', :Description => '<h5>Trekking in Nepal</h5><div class="border"></div><p>With eight of the top ten highest summits in the world and some of the most beautiful landscapes which are only reachable on foot, trekking in Nepal is one of the unique experiences of Asia. Trekking is the most popular activity in Nepal, and travellers will be bombarded on the streets of Kathmandu and the trekking hub, Pokhara, with guides, organised tours and gear for sale or rent. The huge variety of options allows for people of many ages and capabilities to attempt a trek in the country. While you could spend a year planning an expedition to wild and lofty places that few would dare attempt, you could also arrive in Kathmandu with no plans and be on the trail in a matter of days. </p>', :Order =>1)


images0=item1.images.build(:Name => 'mountain', :Content => 'snowy mountain for trek', :Order =>8, :image =>'/uploads/image/image/7/trek9.png')

descriptions0=item1.descriptions.build(:Name => 'snowy ', :Content => 'climb sherp and get helped by them', :Order =>8)

item1.save

item2=category0.items.new(:Name => 'Trekking', :Description => '<h5>Trekking in Nepal</h5><div class="border"></div><p>With eight of the top ten highest summits in the world and some of the most beautiful landscapes which are only reachable on foot, trekking in Nepal is one of the unique experiences of Asia. Trekking is the most popular activity in Nepal, and travellers will be bombarded on the streets of Kathmandu and the trekking hub, Pokhara, with guides, organised tours and gear for sale or rent. The huge variety of options allows for people of many ages and capabilities to attempt a trek in the country. While you could spend a year planning an expedition to wild and lofty places that few would dare attempt, you could also arrive in Kathmandu with no plans and be on the trail in a matter of days. </p>', :Order =>1)
item2.save
images0=item2.images.new(:Name => 'dolpa to trek', :Content => 'Dolpa is the largest district of Nepal covering 5.36% of the total landmass of the country, located at 28°43’N to 29°43’N latitude, and 82°23’E to 83°41’E longitude. Elevation ranges from 1,525 to 7,625 m (5,003 to 25,016 ft).', :Order =>9, :image =>'/uploads/image/image/10/trek7.png')
images0.save
descriptions0=item2.descriptions.new(:Name => 'upper dolpa', :Content => ' The district borders Tibet ( China) on the north and northeast, Jumla and Mugu districts of Karnali on the west, Myagdi, Jajarkot and Rukum on the south, and Mustang on the east', :Order =>3)
description0.save

item3=category0.items.new(:Name => 'Trekking', :Description => '<h5>Trekking in Nepal</h5><div class="border"></div><p>With eight of the top ten highest summits in the world and some of the most beautiful landscapes which are only reachable on foot, trekking in Nepal is one of the unique experiences of Asia. Trekking is the most popular activity in Nepal, and travellers will be bombarded on the streets of Kathmandu and the trekking hub, Pokhara, with guides, organised tours and gear for sale or rent. The huge variety of options allows for people of many ages and capabilities to attempt a trek in the country. While you could spend a year planning an expedition to wild and lofty places that few would dare attempt, you could also arrive in Kathmandu with no plans and be on the trail in a matter of days. </p>', :Order =>1)

item3.save

images0=item3.images.new(:Name => 'makalu,nepal', :Content => 'Makalu has two notable subsidiary peaks. Kangchungtse, or Makalu II (7,678 m) lies about 3 km (2 mi) north-northwest of the main summit. Rising about 5 km (3.1 mi) north-northeast of the main summit across a broad plateau, and connected to Kangchungtse by a narrow, 7,200 m saddle, is Chomo Lonzo (7,804 m).', :Order =>8, :image =>'/uploads/image/image/11/trek6.png')
images0.save

descriptions0=item3.descriptions.new(:Name => 'trek', :Content => 'Makalu has two notable subsidiary peaks. Kangchungtse, or Makalu II (7,678 m) lies about 3 km (2 mi) north-northwest of the main summit. Rising about 5 km (3.1 mi) north-northeast of the main summit across a broad plateau, and connected to Kangchungtse by a narrow, 7,200 m saddle, is Chomo Lonzo (7,804 m).', :Order =>7)
descriptions0.save


