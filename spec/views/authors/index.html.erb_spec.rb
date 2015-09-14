require 'rails_helper'

RSpec.describe "authors/index", type: :view do
  before(:each) do
    assign(:authors, [
      Author.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :biography => "Biography"
      ),
      Author.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :biography => "Biography"
      )
    ])
  end

  it "renders a list of authors" do
    render
    assert_select "tr>td", :text => "First Name Last Name".to_s, :count => 2
  end
end
