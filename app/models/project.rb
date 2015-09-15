class Project < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true, 
                               uniqueness:{case_sensitive: false},
                               length: { maximum: 40 },
                               format:{with: /\A[A-Za-z0-9-_]+\z/}
end
