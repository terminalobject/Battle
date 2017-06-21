#spec/features/enter_names_spec.rb

feature 'adding names to the game' do
  scenario 'submit names' do
    visit('/')
    fill_in('Player_1', with: 'Lily')
    fill_in('Player_2', with: 'Dexter')
    click_button('Submit')
    expect(page).to have_content('Lily', 'Dexter')
  end
end
