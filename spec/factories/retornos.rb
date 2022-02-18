FactoryBot.define do
  factory :retorno do
    monto { "9.99" }
    nombre { "MyString" }
    comentarios { "MyText" }
    cuenta { "MyString" }
    clabe { "MyString" }
    swift { "MyString" }
    banco { "MyString" }
    dir_banco { "MyString" }
    no_tarjeta { "MyString" }
    valido { false }
    movimiento { nil }
  end
end
