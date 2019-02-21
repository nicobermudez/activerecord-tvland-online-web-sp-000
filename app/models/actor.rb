class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name.concat(" " + self.last_name)
  end

  def list_roles
    character = self.characters.name
  end
end
