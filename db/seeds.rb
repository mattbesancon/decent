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
    ["Post test 3", "Author test 3", "Content test 3", 0],
    ["Post test 4", "Author test 4", "Content test 4", 0],
    ["Post test 5", "Author test 5", "Content test 5", 0],
    ["Post test 6", "Author test 6", "Content test 6", 0],
    ["Post test 7", "Author test 7", "Content test 7", 0],
    ["Post test 8", "Author test 8", "Content test 8", 0],
    ["Post test 9", "Author test 9", "Content test 9", 0],
    ["Post test 10", "Author test 10", "Content test 10", 0],
    ["Post test 11", "Author test 11", "Content test 11", 0],
    ["Post test 12", "Author test 12", "Content test 12", 0],
    ["Post test 13", "Author test 13", "Content test 13", 0],
    ["Post test 14", "Author test 14", "Content test 14", 0],
    ["Post test 15", "Author test 15", "Content test 15", 0],
    ["Post test 16", "Author test 16", "Content test 16", 0],
    ["Post test 17", "Author test 17", "Content test 17", 0],
    ["Post test 18", "Author test 18", "Content test 18", 0],
    ["Post test 19", "Author test 19", "Content test 19", 0],
    ["Post test 20", "Author test 20", "Content test 20", 0],
    ["Post test 21", "Author test 21", "Content test 21", 0],
    ["Post test 22", "Author test 22", "Content test 22", 0],
    ["Post test 23", "Author test 23", "Content test 23", 0],
    ["Post test 24", "Author test 24", "Content test 24", 0],
    ["Post test 25", "Author test 25", "Content test 25", 0],
    ["Post test 26", "Author test 26", "Content test 26", 0],
    ["Post test 27", "Author test 27", "Content test 27", 0],
    ["Post test 28", "Author test 28", "Content test 28", 0],
    ["Post test 29", "Author test 29", "Content test 29", 0],
    ["Post test 30", "Author test 30", "Content test 30", 0],
    ["Post test 31", "Author test 31", "Content test 31", 0],
    ["Post test 32", "Author test 32", "Content test 32", 0]
];
  
post_list.each do |title, author, content, rating|
    Post.create(title: title, author: author, content: content, rating: rating)
end
