class Contato < ActiveRecord::Base
  validates :nome, presence: true
  validates :email, presence: true


  belongs_to :cliente_potencial
end
