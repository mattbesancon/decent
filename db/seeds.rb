# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

post_list = [
    ["Post test 1", "Author test 1", "Content test 1", 0],
    ["Post test 2", "Author test 2", "Content test 2", 0],
    ["Post test 3", "Author test 3", "Content test 3", 0]
];
  
post_list.each do |title, author, content, rating|
    Post.create(title: title, author: author, content: content, rating: rating)
end
