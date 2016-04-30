# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.create(title: '안녕하세요', content: '첫 글 입니다')
Comment.create(content: '첫 댓글', post_id: 1)


new_post = Post.new
new_post.title = "안녕하세요2"
new_post.content = "헬로"
new_post.save

new_comment = Comment.new
new_comment.content = '리플 1'
new_comment.post_id = new_post.id
new_comment.save
