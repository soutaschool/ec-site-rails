# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
#
# # アドミン側のものを保存する
Admin.create!(
  email: "admin@gmail.com",
  password: "aaaaaa",
)
#
# EndUser.create!(
#   email: "end_user@gmail.com",
#   encrypted_password: "aaaaaa",
#   last_name: "Test",
#   first_name: "Test",
#   last_name_kana: "テスト",
#   first_name_kana: "テスト",
#   address: "1111111",
#   postal_code: "1111111",
#   phone_number: "1111111",
#   user_flag: "有効",
#   created_at: Time.now,
#   updated_at: Time.now
# )
