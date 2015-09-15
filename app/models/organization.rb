class Organization < Account
  belongs_to :user
  validates :name, length: { maximum: 20,minimum: 4 },
                              format: {with: /\A[a-z0-9]+\z/},
                              exclusion: {in:['admin','test','guest']} 
end
