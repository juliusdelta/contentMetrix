require 'rails_helper'

RSpec.describe Article, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  let(:article) { Article.create!(title: "This is a new article", link: "http://newsbake.com") }

  describe "attributes" do
      it "has title and link attributes" do
          expect(article).to have_attributes(title: "This is a new article", link: "http://newsbake.com")
      end
  end

end
