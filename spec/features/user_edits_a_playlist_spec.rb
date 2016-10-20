require 'rails_helper'

RSpec.feature "User edits a playlist" do
  scenario "they click on edit and check/uncheck songs" do
    playlist = create(:playlist_with_songs)
    song_one, song_two, song_three = playlist.songs
    uniq_song = create(:song, title: "A Good Song")
    visit playlists_path
    click_on playlist.name
    click_on "Edit"
    fill_in "playlist_name", with: "A Brighter Tomorrow"
    uncheck("song-#{song_one.id}")
    check("song-#{uniq_song.id}")
    click_on "Update Playlist"
    expect(page).to have_content "A Brighter Tomorrow"
    expect(page).to have_link uniq_song.title
    expect(page).to_not have_link song_one.title
  end
end
