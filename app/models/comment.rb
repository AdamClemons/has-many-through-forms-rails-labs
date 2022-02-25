class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_attributes=(user_attributes)
    # byebug
    if user_attributes["username"].present?
      self.user = User.find_or_create_by(user_attributes)
      # self.user = user
    end
  end

end
