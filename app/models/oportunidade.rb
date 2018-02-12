class Oportunidade < ActiveRecord::Base
  validates :nome, presence: true
  validates :descricao, presence: true
  validates :status, presence: true
  validates :receita_estimada, presence: true
  validates :probabilidade, presence: true

  belongs_to :cliente_potencial
  has_many :atividades

  belongs_to :decisor, class_name: "Contato"
  belongs_to :influenciador, class_name: "Contato"
  belongs_to :comprador, class_name: "Contato"

  accepts_nested_attributes_for :decisor
end
