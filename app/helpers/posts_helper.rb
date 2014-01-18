module PostsHelper
  def first_ten(post)
    arr = post.split(' ')
    "#{arr[0...10].join(' ')}..."
  end

  def first_100(post)
    arr = post.split(' ')
    "#{arr[0...100].join(' ')}..."
  end

end
