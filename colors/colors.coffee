# Returns a color hex based on string
stringToColour = (str) ->
  `var i`
  # str to hash
  i = 0
  hash = 0
  while i < str.length
    hash = str.charCodeAt(i++) + (hash << 5) - hash
  # int/hash to hex
  i = 0
  colour = '#'
  while i < 3
    colour += ('00' + (hash >> i++ * 8 & 0xFF).toString(16)).slice(-2)
  colour

# Checks whether a color is bright
isDarkColor = (hex) ->
  # Formula taken from http://www.w3.org/TR/AERT - color brightness
  m = hex.slice(1).match(/.{1,2}/g)
  red = parseInt(m[0], 16)
  green = parseInt(m[1], 16)
  blue = parseInt(m[2], 16)
  ((red*299 + green*587 + blue*114) / 1000) < 100

