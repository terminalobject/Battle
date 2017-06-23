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
    click_button('Keep playing')
    expect(page).to have_content 90
  end
end

feature 'switching turns' do
  scenario 'turns are switched after attack' do
    sign_in_and_play
    click_button('Attack')
    click_button('Keep playing')
    click_button('Attack')
    click_button('Keep playing')
    expect(page).to have_content('Lily 90/100HP vs. Dexter 90/100HP')
  end
end

feature 'losing the game' do
  scenario 'one of the players\' health goes to 0 or below' do
    sign_in_and_play
    both_players_attack_10_times
    expect(page).to have_content("loses")
  end
end

