require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(title: 'test title', author: 'test author', content: 'test content')
  end
  
  test 'valid post' do
    assert @post.valid?
  end
  
  test 'invalid without title' do
    @post.title= nil
    refute @post.valid?, 'saved user without a title'
    assert_not_nil @post.errors[:title], 'no validation error for email present'
  end
  
  test 'invalid without author' do
    @post.author = nil
    refute @post.valid?
    assert_not_nil @post.errors[:author]
  end

  test 'invalid without content' do
    @post.content = nil
    refute @post.valid?
    assert_not_nil @post.errors[:content]
  end
end
