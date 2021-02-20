json.set! :posts do
  json.lessonNum @posts.length
end
json.set! :currentUser do
  json.email current_user.email
end