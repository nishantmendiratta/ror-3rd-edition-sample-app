module UsersHelper
  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user)
    if user.email?
      gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
      gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
      image_tag(gravatar_url, alt: user.name, class: "gravatar")
    else
      image_tag("/img/avatar_default.jpg", alt: user.name, class: "gravatar")
    end
  end
end
