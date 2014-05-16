images_url = process.env.HUBOT_PRONGMEME_URL
images_path = process.env.HUBOT_PRONGMEME_PATH

swag = [
  "swag.gif"
]

merge = [
  "MergeYourSurge.png"
]

module.exports = (robot) ->
  robot.hear /.*(swag me).*/i, (msg) ->
    msg.send images_url + msg.random swag
