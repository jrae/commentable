require 'redcarpet/compat'

class Project < ActiveRecord::Base
  commentable
end

class Task < ActiveRecord::Base
  commentable :format => proc {|comment| Markdown.new(comment.body.to_s).to_html}
end

class List < ActiveRecord::Base
end
