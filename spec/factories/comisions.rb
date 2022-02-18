FactoryBot.define do
  factory :comision do
    tipo { "MyString" }
    monto { "MyString" }
    comentario { "MyString" }
    porcentaje { "MyString" }
    movimiento { nil }
  end
end
