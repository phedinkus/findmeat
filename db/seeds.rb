# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Meat.delete_all

Meat.create(:animal => 'chicken', :kind => 'drumstick')
Meat.create(:animal => 'cow', :kind => 'ribeye steak')
Meat.create(:animal => 'cow', :kind => 'ground beef')
Meat.create(:animal => 'deer', :kind => 'venison')
Meat.create(:animal => 'pig', :kind => 'bacon')
Meat.create(:animal => 'pig', :kind => 'pork belly')
Meat.create(:animal => 'horse', :kind => 'steak')

