require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.new(content: 'test content', post_id: 2)
  end
  
  #test 'valid comment' do
  #  assert @comment.valid?
  #end
  
  test 'invalid without content' do
    @comment.content = nil
    refute @comment.valid?, 'saved comment without a content'
    assert_not_nil @comment.errors[:content], 'no validation error for content present'
  end

  test 'invalid without post_id' do
    @comment.post_id = nil
    refute @comment.valid?, 'saved comment without post_id'
    assert_not_nil @comment.errors[:post_id], 'no validation error for post_id present'
  end
end
