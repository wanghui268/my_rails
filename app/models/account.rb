class Account < ActiveRecord::Base
  validates :name, presence: true, 
                               uniqueness:{case_sensitive: false}

  self.table_name="users"

end
