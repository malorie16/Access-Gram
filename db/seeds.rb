# hashtag_id: # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Hashtag.create(name:'#davechappelle')
Hashtag.create(name:'#malorie')
Hashtag.create(name:'#jee')
Hashtag.create(name:'#anthony')

PostHashtag.create(post_id: 1, hashtag_id: 4)
PostHashtag.create(post_id: 2, hashtag_id: 2)
PostHashtag.create(post_id: 2, hashtag_id: 1)
PostHashtag.create(post_id: 1, hashtag_id: 3)
