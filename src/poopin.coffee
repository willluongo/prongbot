# Description:
#   When someone in channel says they are pooping, hubot will helpfully provide their poopin pic
# 
# Dependencies:
#   None
# 
# Configuration:
#   HUBOT_POOPIN_PLACE
#
# Commands:
#   I'm poopin(g) - Display the user's poopin pic!
#
# Author:
#   willluongo

poopin_place = process.env.HUBOT_POOPIN_PLACE

module.exports = (robot) ->
	regex = /I('m| am)? poopin(g)?/i

	robot.hear regex, (msg) ->
		user = msg.message.user.name.toLowerCase().split(" ").join()
		msg.send poopin_place + user + ".png"