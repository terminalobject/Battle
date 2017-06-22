#spec/features/hit_points_spec.rb

feature 'Viewing hit points' do
  scenario 'see player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Lily vs. Dexter')
    expect(page).to have_content("#{@p2_health}/100HP")
  end
end
