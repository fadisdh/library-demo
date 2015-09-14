require 'rails_helper'

RSpec.describe Author, type: :model do
  it "requires a first name" do
    author = build_stubbed :author, first_name: nil
    expect(author.valid?).to be_falsey
    expect(author.errors[:first_name].size).to eq 1
    expect(author.errors[:first_name]).to include "can't be blank"
  end

  it "requires a last name" do
    author = build_stubbed :author, last_name: nil
    expect(author.valid?).to be_falsey
    expect(author.errors[:last_name].size).to eq 1
    expect(author.errors[:last_name]).to include "can't be blank"
  end
end
