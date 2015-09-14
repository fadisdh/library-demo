require 'rails_helper'

RSpec.describe Book, type: :model do
  it "requires a title" do
    book = build_stubbed :book, title: nil
    expect(book.valid?).to be_falsey
    expect(book.errors[:title].size).to eq 1
    expect(book.errors[:title]).to include "can't be blank"
  end
end
