class Book < ApplicationRecord

  before_validation :normalize_title

  has_many :tasks, :dependent => :delete_all

  private

  def normalize_title
    self.title = self.title.titleize
  end

end
