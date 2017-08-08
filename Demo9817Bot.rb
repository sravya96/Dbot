#import the gem
require 'telegram/bot'

#add token
token='428656862:AAEcSnFXrbgrQMnBH_YdeLW1VCxqv1Neue4'


facts = ["People say Bless you when you sneeze because when you sneeze,your heart stops for a mili-second.","Tea is said to have been discovered in 2737 BC by a Chinese emperor when some tea leaves accidentally blew into a pot of boiling water. The tea bag was introduced in 1908 by Thomas Sullivan of New York.","Bill Gates first business was Traff-O-Data, a company that created machines which recorded the number of cars passing a given point on a road.","A chip of silicon a quarter-inch square has the capacity of the original 1949 ENIAC computer, which occupied a city block.","Leonardo da Vinci could write with one hand and draw with the other at the same time."]

Telegram::Bot::Client.run(token) do |bot|
 bot.listen do |message|
   case message.text
	when '/start'
		reply = "Hello, Friend. Type /hello to know more. Type /bye to bid farewell"
	when '/hello'
		reply = "I am Dbot created by Sravya Pullagura for demonstration purpose on 9/8/17. Type /facts to know about random facts"
	when '/facts'
		reply = facts[rand(5)]
	when '/bye'
		reply = "Good bye!! Meet you soon."
	else
		reply = "Sorry, buddy. I'm having a hard time understanding you. Please follow the instructions to talk to me."
	end
	bot.api.send_message(chat_id:message.chat.id, text: reply)

 end
end
	
