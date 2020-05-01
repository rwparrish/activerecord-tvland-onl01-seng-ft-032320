class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    full_names = []
    actors_names = self.actors.pluck(:first_name, :last_name).flatten.join(" ")
    full_names << actors_names 
  end
end