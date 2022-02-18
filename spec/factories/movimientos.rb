FactoryBot.define do
  factory :movimiento do
    cantidad_total { "MyString" }
    total_depositos { "MyString" }
    total_retornos { "MyString" }
    total_comisiones { "MyString" }
    comision_agente { "MyString" }
    comision_oficina { "MyString" }
    estatus_movimiento { "MyString" }
    estatus_deposito { "MyString" }
    estatus_retorno { "MyString" }
    estatus_comision { "MyString" }
    belongs_to { "" }
  end
end
