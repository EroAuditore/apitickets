FactoryBot.define do
  factory :deposito do
    monto { "9.99" }
    banco { "MyString" }
    fecha { "2022-02-17" }
    valido { false }
    empresa { "MyString" }
    nombre { "MyString" }
  end
end
