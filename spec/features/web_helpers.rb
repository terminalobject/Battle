def sign_in_and_play
  visit('/')
  fill_in('Player_1', with: 'Lily')
  fill_in('Player_2', with: 'Dexter')
  click_button('Submit')
end

def both_players_attack
  sign_in_and_play
2.times players_attack
end

def both_players_attack_10_times
  sign_in_and_play
  18.times {players_attack}
  players_attack
end

def players_attack
  click_button('Attack')
  click_button('Keep playing')
end
