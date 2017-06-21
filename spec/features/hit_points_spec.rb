#spec/features/hit_points_spec.rb

feature 'Viewing hit points' do
  scenario 'see player 2 hit points' do
    visit('/')
    fill_in('Player_1', with: 'Lily')
    fill_in('Player_2', with: 'Dexter')
    click_button('Submit')
    expect(page).to have_content("#{@player2_HP}/100HP")
  end
end
