class UsersController < ApplicationController
  def show
    #@items = Item.where(user_id: current_user.id)

    # アソシエーション設定による改善コード ~ /views/users/show.html.erb を参照 ~
    @items = current_user.items
    #@user = User.find(current_user.id)
  end
end
