test 'should have right home page title' do
  get :index
  assert_response :success
  assert_select 'h1', 'Welcome to the Jitter Homepage!'
end
