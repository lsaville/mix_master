require 'rails_helper'

RSpec.feature "User visits artits index" do
  scenario "User sees the artist names and they should be links to the artist's show page" do
    lenny_photo_path = "https://www.earnthenecklace.com/wp-content/uploads/2016/01/Lenny-Kravitz-Net-Worth.jpg"
    Artist.create(name: "Lenny Travitz", image_path: "https://www.earnthenecklace.com/wp-content/uploads/2016/01/Lenny-Kravitz-Net-Worth.jpg")
    Artist.create(name: "Snoop Dogg", image_path: "http://www.chartattack.com/wp-content/uploads/2016/10/snoop-dogg-marijuana.jpg")
    visit artists_path

    expect(page).to have_content "Lenny Travitz"
    expect(page).to have_content "Snoop Dogg"
    click_link "Lenny Travitz"
    expect(page).to have_content "Lenny"
    expect(page).to have_css("img[src=\"#{lenny_photo_path}\"]")
  end
end
