class Article < ApplicationRecord
  include AASM

  aasm do
    state :source, :initial => true
    state :approved
    state :writing
    state :publishing

    event :approve do
      transitions :from => :source, :to => :approved
    end

    event :write do
      transitions :from => :approved, :to => :writing
    end

    event :publish do
      transitions :from => :writing, :to => :publishing
    end
  end
end
