require 'rails_helper'

RSpec.feature "User edits existing artist" do
  scenario "They can enter data in an edit page" do
    artist1 = Artist.create(name: "Lenny Travitz", image_path: "https://www.earnthenecklace.com/wp-content/uploads/2016/01/Lenny-Kravitz-Net-Worth.jpg")
    artist2 = Artist.create(name: "Snoop Dogg", image_path: "http://www.chartattack.com/wp-content/uploads/2016/10/snoop-dogg-marijuana.jpg")

    visit artist_path(artist1)
    click_link "Edit Artist"
    fill_in "Name", with: "HHHHEEEEEEEEYY"
    click_button "Update Artist"

    expect(page).to have_content "HHHHEEEEEEEEYY"
  end
end
