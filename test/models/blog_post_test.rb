require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  test "draft returns true for draft blog post" do
    #binding.irb
    assert blog_posts(:draft).draft?
  end

  test "draft returns false for draft blog post" do
    refute blog_posts(:published).draft?
  end

  test "draft returns true for published blog post" do
    assert blog_posts(:published).published?
  end

  test "draft returns false for scheduled blog post" do
    refute blog_posts(:published).scheduled?
  end

end
