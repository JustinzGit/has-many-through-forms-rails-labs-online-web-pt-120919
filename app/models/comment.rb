class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: :all_blank

  # def user_name=(name)
  #   self.user = User.find_or_create_by(username: name)
  # end
  #
  # def user_name
  #   self.user ? self.user.username : nil
  # end
end
