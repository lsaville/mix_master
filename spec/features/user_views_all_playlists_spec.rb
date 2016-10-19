require "rails_helper"

RSpec.feature "User can see playlists and click on them" do
    scenario "they see playlist names" do
      playlist1, playlist2, playlist3 = create_list(:playlist, 3)
      visit playlists_path

      expect(page).to have_link playlist1.name
      expect(page).to have_link playlist2.name
      expect(page).to have_link playlist3.name

      click_on playlist1.name
      expect(page).to have_content playlist1.name
    end
end
