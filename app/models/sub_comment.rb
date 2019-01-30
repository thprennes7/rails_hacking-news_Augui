class SubComment < ApplicationRecord
  #Permet de dire à la class qu'elle apartient à la tabel user, comment
  belongs_to :user
  belongs_to :comment
end
