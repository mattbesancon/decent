FactoryBot.define do
    factory :user do
        id {1}
        email {"test@user.com"}
        password {"qwerty"}
        admin {true}
    end
end
