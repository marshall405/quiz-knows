class Response < ApplicationRecord
    belongs_to :question
    belongs_to :answer  
    belongs_to :user
    belongs_to :quiz



end
