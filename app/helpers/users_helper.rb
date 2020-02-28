module UsersHelper
  def gravatar_for user, options = {size: Settings.user.gravatar_image_size}
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
  
  def get_relationship user
    if current_user.following? user
      current_user.active_relationships.find_by followed_id: user.id
    else
      current_user.active_relationships.build
    end
  end
end
