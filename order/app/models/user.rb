class User < ApplicationRecord

  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}


  def urls
    return Url.where(user_id: self.id)
  end

end
