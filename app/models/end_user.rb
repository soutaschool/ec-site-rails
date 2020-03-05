class EndUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         acts_as_paranoid 
        #  退会済みかどうかをenumを使って管理
         enum user_flag: {"有効": false, "退会済み": true}
end
