require "rails_helper"

RSpec.feature "User deletes existing artist" do
  scenario "They can delete an artist at the click of a button" do
    artist1 = Artist.create(name: "Lenny Travitz", image_path: "https://www.earnthenecklace.com/wp-content/uploads/2016/01/Lenny-Kravitz-Net-Worth.jpg")
    artist2 = Artist.create(name: "Snoop Dogg", image_path: "http://www.chartattack.com/wp-content/uploads/2016/10/snoop-dogg-marijuana.jpg")

    visit artist_path(artist1)
    click_link "Delete Artist"

    expect(page).to_not have_content "Lenny" 
  end
end
