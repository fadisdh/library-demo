FactoryGirl.define do
  factory :book do
    title "Eloquent Ruby"
    isbn "978-0-321-58410-6"
    description %Q(
It’s easy to write correct Ruby code, but to gain the fluency needed to write great Ruby code, you must go beyond syntax and absorb the “Ruby way” of thinking and problem solving. In Eloquent Ruby, Russ Olsen helps you write Ruby like true Rubyists do–so you can leverage its immense, surprising power.)
    publisher "Addison-Wesley"
    published_on "2011-02-21"

    factory :invalid_book do
      title nil
    end
  end

end
