class User < Account
  has_many :projects
  has_many :organizations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, length: { maximum: 20,minimum: 4 },
                               format:{with: /\A[a-z0-9]+\z/},
                               exclusion:{in:['admin','test','guest']} 
end
