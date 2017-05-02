class Student < ApplicationRecord

  paginates_per 10

  validates :stu_id, presence: { message: "不可空白" },
                     uniqueness: { message: "有重複的學號" }, on: :create

end
