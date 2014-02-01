module PostsHelper
  def first_10(post)
    arr = post.split(' ')
    "#{arr[0...10].join(' ')}..."
  end

  def first_50(post)
    arr = post.split(' ')
    "#{arr[0...50].join(' ')}..."
  end

   def first_20(post)
    arr = post.split(' ')
    "#{arr[0...20].join(' ')}..."
  end
end
