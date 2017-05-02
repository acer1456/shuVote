# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

2000.times do
  stu_id  = [*1..1000].sample(1)
  stu_class = "資管系"
  stu_year = "一年級"


  Student.create(:stu_id => stu_id, :stu_class => stu_class, :stu_year => stu_year)

end
