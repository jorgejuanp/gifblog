# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

posts = Post.create([
  {title: 'Post 01', gif: 'giphy.gif', votes: 0},
  {title: 'Post 02', gif: 'giphy2.gif', votes: 0},
  {title: 'Post 03', gif: 'giphy3.gif', votes: 0},
  {title: 'Post 04', gif: 'giphy4.gif', votes: 0},
  ])
