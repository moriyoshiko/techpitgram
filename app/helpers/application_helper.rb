module ApplicationHelper

  # ==========ここから追加する==========
  def avatar_url user
    return user.profile_photo unless user.profile_photo.blank?
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    "https://www.gravatar.com/avatar/#{gravatar_id}.jpg"
  end
  # ==========ここまで追加する==========

end
