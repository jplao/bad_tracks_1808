require 'rails_helper'

RSpec.describe "When a user adds songs to their cart" do
  it "a message is displayed" do
    artist_1 = create(:artist)
    song_1 = create(:song, artist: artist_1)

    visit songs_path

    click_button "Add Song"

    expect(page).to have_content("Added song to cart.")
  end
end
