#spec/features/enter_names_spec.rb

feature 'adding names to the game' do
  scenario 'submit names' do
    sign_in_and_play
    expect(page).to have_content('Lily', 'Dexter')
  end
end
