#spec/features/attack_spec.rb

feature 'attack' do
  scenario 'attack Player 2 and get a confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('attacked')
  end
end

feature 'decrease hp' do
  scenario 'hp reduced by 10' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 90
  end
end
