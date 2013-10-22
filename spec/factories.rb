FactoryGirl.define do
    factory :user do
        name 'alex'
        email 'alex@example.com'
        password 'foobar'
        password_confirmation 'foobar'
    end
end
