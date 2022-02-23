require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  test 'valid url' do
    link = Link.new(url: 'http://www.google.com')
    assert link.valid?
  end

  test 'invalid url' do
    link = Link.new(url: 'www.test.   com')
    refute link.valid?
  end

  test 'url presence' do
    link = Link.new(url: nil)
    refute link.save
  end

  test 'slug presence' do
    link = Link.create(url: 'http://www.testing.com/about-us')
    assert_not_empty link.slug
  end

  test 'open counts increase' do
    link = Link.create(url: 'http://www.testing.com/about-us')
    link.opened!
    link.opened!
    assert_equal link.clicked, 2
  end
end
