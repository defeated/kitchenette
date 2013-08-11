require 'digest/md5'

module ApplicationHelper
  def gravatar_url(email, options = {})
    hash      = Digest::MD5.hexdigest email.to_s.downcase.strip
    defaults  = { d: 'mm', r: 'r' }
    options   = defaults.merge options

    "https://secure.gravatar.com/avatar/#{ hash }.jpg?#{ options.to_query }"
  end

  def gravatar_image(email, size = 56)
    image_tag gravatar_url(email, s: size),
      height: size, width: size, alt: 'avatar', class: 'avatar'
  end
end
