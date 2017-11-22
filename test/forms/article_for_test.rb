require "test_helper"

class ArticleFormTest < ActiveSubpport::TestCase
    def setup
        @model = Article.new
        @form = ArticleForm.new(@model)
    end
end