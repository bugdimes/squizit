require 'test_helper'

class LinksControllerTest < ActionDispatch::IntegrationTest
  test 'success response in create api' do
    post links_create_url, params: { link: { url: 'https://www.google.com' } }
    assert_response :success
  end

  test 'should create hashed url' do
    url = 'https://www.google.com'
    post links_create_url, params: { link: { url: url } }

    json = JSON.parse(response.body)
    assert_equal json['url'], url
    assert_equal json['slug'].length, 32
  end

  test 'should return existing url if present' do
    url = 'https://www.google.com'
    post links_create_url, params: { link: { url: url } }

    assert_no_difference "Link.count" do
      post links_create_url, params: { link: { url: url } }
    end
  end

  test 'should redirected to the original url' do
    url = 'https://www.google.com'
    post links_create_url, params: { link: { url: url } }

    link = JSON.parse(response.body)
    get "/s/#{link['slug']}"
    assert_redirected_to link['url']
  end
end
