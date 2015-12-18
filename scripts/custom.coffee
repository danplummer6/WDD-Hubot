module.exports = (robot) ->

# If bot is directly asked hi, hello, or hey
# bot will respond with message

  robot.respond /hi|hello|hey/i, (msg) ->
    msg.send "Hello human friend!"

#----------------------------------------------------

# Bot listens for superbowl or super bowl
# Bot responds with message

  robot.hear /superbowl|super bowl/i, (res) ->
    res.send "The Minnesota Vikings are going to win the Superbowl!"

#----------------------------------------------------

# Bot listens halo 
# Bot displays a random image

  halo = [
    "http://cdn1-www.comingsoon.net/assets/uploads/2015/10/masterchief.jpg",
    "http://www.gamereactor.eu/media/30/_1543053.png",
    "https://content.halocdn.com/media/Default/community/blogs/main_image/h5-guardians-gi-cover-module-d8c8e51e9168413190febb1703d546d0.jpg",
    "http://17r1l63fshd52dy9yakdizhkog.wpengine.netdna-cdn.com/wp-content/uploads/2015/04/Halo-5-Guardians-645x370.jpg"
  ]

  robot.hear /halo/i, (msg) ->
    msg.send msg.random halo

#----------------------------------------------------