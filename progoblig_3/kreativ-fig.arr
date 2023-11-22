use context essentials2021
include color

w = 500
h = (w * 25) / 28

# Background
background = rectangle(w, h, "solid", color(36, 37, 38, 1))

# Data type for elements
data El:
    el(img, xp, yp)
end

# List of elements
image-parts = [list:
  # Eye
  el(circle((w * 3) / 280, "solid", "white"), (w * 2) / 7, (w * 27) / 70),
  el(circle(w / 28, "solid", "black"), (w * 17) / 56, (w * 11) / 28),

  # Gills
  el(circle((w * 5) / 56, "solid", "red"), (w * 5) / 14, (w * 3) / 7),
  el(circle(w / 14, "solid", "black"), (w * 11) / 28, (w * 3) / 7),
  el(circle((w * 5) / 56, "solid", "red"), (w * 11) / 28, (w * 3) / 7),
  el(circle(w / 14, "solid", "black"), (w * 3) / 7, (w * 3) / 7),
  el(circle((w * 5) / 56, "solid", "red"), (w * 3) / 7, (w * 3) / 7),
  el(circle(w / 14, "solid", "black"), (w * 13) / 28, (w * 3) / 7),
  
  # Main body
  el(circle((w * 5) / 14, "solid", "red"), (w * 25) / 56, (w * 25) / 56), 
  
  # Top fins
  el(circle(w / 28, "solid", "crimson"), (w * 57) / 140, (w * 11) / 140),
  el(circle(w / 28, "solid", "crimson"), (w * 17) / 35, (w * 11) / 140),
  el(circle(w / 28, "solid", "crimson"), (w * 25) / 56, w / 14),
  
  # Mouth
  el(circle(w / 28, "solid", "crimson"), (w * 3) / 28, (w * 3) / 7),
  el(circle(w / 28, "solid", "crimson"), (w * 3) / 28, (w * 13) / 28),
  
  # Belly fin
  el(circle((w * 3) / 56, "solid", color(36, 37, 38, 1)), (w * 25) / 56, (w * 7) / 8),
  el(rectangle((w * 3) / 28, (w * 3) / 28, "solid", "crimson"), (w * 25) / 56, (w * 23) / 28),
  
  # Tail
  el(circle((w * 5) / 28, "solid", color(36, 37, 38, 1)), (w * 15) / 14, (w * 25) / 56),
  el(circle(w / 7, "solid", "crimson"), (w * 25) / 28, (w * 25) / 56),
]

# Function to place image
fun assemble(img-list):
  if img-list.length() > 0:
    place-image(img-list.first.img, img-list.first.xp, img-list.first.yp, assemble(img-list.rest))
  else:
    background
  end
end

assemble(image-parts)
   
