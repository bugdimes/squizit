require 'test_helper'

class LinksControllerTest < ActionDispatch::IntegrationTest
  test 'success response in create api' do
    post links_create_url, params: { link: { url: 'https://www.google.com' } }
    assert_response :success
  end

  
end
