class Meat < ActiveRecord::Base
  searchable do
    text :kind, :animal
  end
end
