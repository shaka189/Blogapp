module PostsHelper
    # Returns the Gravatar for the given user.
  def gravatar_for(post)
    gravatar_id = Digest::MD5::hexdigest(post.body.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: post.body, class: "gravatar")
  end
end
