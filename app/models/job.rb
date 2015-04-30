class Job < ActiveRecord::Base
  
  def self.search(search)
    if search
      find(:all, :contidions => ['title LIKE ?', 'description LIKE ?', "%#{search}%", "%#{search}%"])
    else
      find(:all)
    end
  end
  
  include PgSearch
  pg_search_scope :search, against: [:description, :title, :list_snippet]
end
