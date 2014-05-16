# Description
#   Our personal meme repository!
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_PRONGMEME_URL
#   HUBOT_PRONGMEME_PATH
#
# Commands:
#   swag me - puts a swag image in the channel
#   merge me - puts a merge image in the channel
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   willluongo

images_url = process.env.HUBOT_PRONGMEME_URL
images_path = process.env.HUBOT_PRONGMEME_PATH

dunk = [
  "swag.gif"
]

merge = [
  "MergeYourSurge.png"
]

module.exports = (robot) ->
  robot.hear /.*(dunk me|dunk on).*/i, (msg) ->
    msg.send images_url + msg.random swag

  robot.hear /.*(merge me).*/i, (msg) ->
    msg.send images_url + msg.random merge
