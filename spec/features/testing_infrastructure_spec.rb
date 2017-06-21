#spec/features/testing_infrastructure_spec.rb

feature 'testing infrastructure' do
  scenario 'can run and check home page content' do
    visit '/'
    expect(page).to have_content("Testing infrastructure working!")
  end

end
