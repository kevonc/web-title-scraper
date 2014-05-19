require 'sinatra'
require "mechanize"

post '/:url' do
	agent = Mechanize.new
	url = params[:url]
	page = agent.get(url)
	title = page.search("meta[property='og:title']").attr("content").text

	title
end