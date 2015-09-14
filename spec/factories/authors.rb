FactoryGirl.define do
  factory :author do
    first_name "Dave"
    last_name "Thomas"
    biography %Q(Dave Thomas is a computer programmer, author and editor. He has written about Ruby and together with Andy Hunt, he co-authored The Pragmatic Programmer and runs The Pragmatic Bookshelf publishing company. Thomas moved to the United States from England in 1994 and lives north of Dallas, Texas.

    Thomas coined the phrases 'Code Kata' and 'DRY' (Don't Repeat Yourself), and was an original signatory and author of the Agile Manifesto. He studied computer science at Imperial College London.)

    factory :invalid_author do
      first_name nil
      last_name nil
    end
  end

end
