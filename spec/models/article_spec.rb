require 'rails_helper'

RSpec.describe Article, type: :model do

  let(:article) { Article.create!(title: "This is a new article", link: "http://newsbake.com") }

  describe "attributes" do
      it "has title and link attributes" do
          expect(article).to have_attributes(title: "This is a new article", link: "http://newsbake.com", aasm_state: "source")
      end
  end

  describe "state" do
    it "initiates with state of source" do
      expect(article).to have_attributes(aasm_state: "source")
    end

    it "successfully changes state to approved once approve transitions" do
      article.approve!
      expect(article).to have_attributes(aasm_state: "approved")
    end

    it "successfully changes state to writing once write transitions" do
      article.approve!
      article.write!
      expect(article).to have_attributes(aasm_state: "writing")
    end

    it "successfully changes state to publishing once publish transitions" do
      article.approve!
      article.write!
      article.publish!
      expect(article).to have_attributes(aasm_state: "publishing")
    end
  end


end
