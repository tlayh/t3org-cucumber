require('net/http')
require('rexml/document')
require('rexml/xpath')
include REXML

module MailHelpers

	def mail_address_for(username)
		"#{username}@mmmmail.com"
	end

	def mails_for(username)
		xml = Net::HTTP.get(URI.parse('http://www.mmmmail.com/t3ts1341698232.xml'))
		doc = Document.new(xml)
		mails = []
		REXML::XPath.each(doc, '//channel/item') do |el|
			mails.push({
						   :title => REXML::XPath.first(el, './title').get_text,
						   :description => REXML::XPath.first(el, './description').get_text
					   })
		end
		mails
	end
end

World(MailHelpers)