class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  after_create :init_access_token

  def init_access_token
    hashids = Hashids.new("salt", 12)
    update(access_token: hashids.encode(self.id))
  end

end
