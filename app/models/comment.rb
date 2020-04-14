class Comment < ApplicationRecord
    def comment_time_limit
        (Time.now - created_at) / 60 <= 10
    end
end