class Movimiento < ApplicationRecord
    has_many :depositos
    has_many :comisions
    has_many :retornos

    belongs_to :agentes
    belongs_to :clientes
end
