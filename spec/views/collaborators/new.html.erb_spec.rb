require 'rails_helper'

RSpec.describe "collaborators/new", type: :view do
  before(:each) do
    assign(:collaborator, Collaborator.new(
      :project => nil,
      :user => nil,
      :approved => false
    ))
  end

  it "renders new collaborator form" do
    render

    assert_select "form[action=?][method=?]", collaborators_path, "post" do

      assert_select "input#collaborator_project_id[name=?]", "collaborator[project_id]"

      assert_select "input#collaborator_user_id[name=?]", "collaborator[user_id]"

      assert_select "input#collaborator_approved[name=?]", "collaborator[approved]"
    end
  end
end
