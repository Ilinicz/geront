module PostsHelper
  def first_ten(post)
    arr = post.split(' ')
    "#{arr[0...10].join(' ')}..."
  end

  def first_50(post)
    arr = post.split(' ')
    "#{arr[0...50].join(' ')}..."
  end

end
