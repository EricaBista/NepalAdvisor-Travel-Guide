# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 Category.create(Name: 'Trekking', Description: 'vsdvfhjsfdskfdjgfjdgfjdgfdjfgjdhsg', Order: '1', icon: 'trek-icon.png', slug: 'trekking')
Category.create(Name: 'Tourism', Description: 'vsdvfhjsfdskfdjgffgfgjdgfjdgfdjfgjdhsg', Order: '2', icon: 'tour-icon.png', slug: 'tourism')
Category.create(Name: 'Culture', Description: 'vsdvfhjsfdskfdjgfgfgjdgfjdgfdjfgjdhsg', Order: '3', icon: 'culture-icon.png', slug: 'culture')
Category.create(Name: 'Business', Description: 'vsdvfhjsfdskfdjgdggdsfjdgfjdgfdjfgjdhsg', Order: '4', icon: 'business-icon.png', slug: 'business')
Category.create(Name: 'Legal', Description: 'vsdvfhjsfdskfdjgfjdsdsfsgfjdgfdjfgjdhsg', Order: '5', icon: 'law-icon.png', slug: 'legal')
Category.create(Name: 'Visa', Description: 'vsdvfhjsfdskfdjgfjdgfffjdgfdjfgjdhsg', Order: '6', icon: 'visa-icon.png', slug: 'visa')
