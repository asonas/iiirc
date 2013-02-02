class User < ActiveRecord::Base
  include Gravtastic
  gravtastic secure: true, size: 24

  has_many :snippets, dependent: :destroy

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid      = auth["uid"]
      user.username = auth["info"]["nickname"]
      user.email    = auth["info"]["email"]
    end
  end
end
