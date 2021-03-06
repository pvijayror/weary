$LOAD_PATH.unshift File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'rubygems'
require 'weary'

class Repository
  
  def show(user, repo)
    Weary.get "http://github.com/api/v2/yaml/repos/show/#{user}/#{repo}"
  end
      
end

weary = Repository.new
weary.show('mwunsch','weary').perform do |response|
  puts response.body
end