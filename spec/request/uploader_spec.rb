require 'spec_helper'

describe "accessing the picture without being logged in" do
  it "should ask to login" do
    visit "/ckeditor/pictures"
    page.should have_content("You must first log in to access admin section.")
  end
end