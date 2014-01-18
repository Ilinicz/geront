module PostsHelper
  def first_ten(post)
    arr = post.split(' ')
    "#{arr[0...10].join(' ')}..."
  end
end
