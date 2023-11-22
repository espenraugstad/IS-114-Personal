use context essentials2021
# For å kunne bruke RGB-farger
include color

# Nasjonalflagget
# Den hvite bakgrunnen til flagget
var base = rectangle(220, 160, "solid", "white")

# De små, røde rektanglene på venstre side av flagget
var redSmall = square(60, "solid", color(206,0,0,1))

# Større røde rektangler på høyre siden
var redLarge = rectangle(120, 60, "solid", color(206,0,0,1))

# Vertikal blå stripe
var blueVertical = rectangle(20, 160, "solid", color(0,31,100,1))

# Horisontal blå stripe
var blueHorisontal = rectangle(220, 20, "solid", color(0,31,100,1))

# Plasserer de ulike komponentene oppå hverandre.
put-image(redSmall, 30, 30, 
  put-image(redSmall, 30, 130, 
    put-image(redLarge, 160, 30, 
      put-image(redLarge, 160, 130, 
        put-image(blueVertical, 80, 80, (
            put-image(blueHorisontal, 110, 80, base)))))))

# For handelsflagget
# Bakgrunnen er noe større
var base2 = rectangle(270, 160, "solid", "white")

# De ekstra røde trianglene på høyre side. Flipper det øverste når det tegnes.
var redTriangle = right-triangle(110,  60, "solid", color(206,0,0,1))

# Den blå tuppen er her satt sammen av to rettvinklede trekanter som ligger inntil hverandre.
# Den nederste halvdelen er rotert, mens den øverste er rotert og flippet.
var blueTriangle = right-triangle(10, 50, "solid", color(0,31,100,1))


put-image(redSmall, 30, 30, 
  put-image(redSmall, 30, 130, 
    put-image(redSmall, 130, 30, 
      put-image(redSmall, 130, 130, 
        put-image(blueVertical, 80, 80, (
            put-image(blueHorisontal, 110, 80, 
              put-image(flip-vertical(redTriangle), 270 - (image-width(redTriangle) / 2), 130, 
                put-image(redTriangle,  270 - (image-width(redTriangle) / 2), 30,
                  put-image(rotate(-90,blueTriangle), 270 - (image-width(rotate(-90,blueTriangle)) / 2) , 75, 
                    put-image(flip-horizontal(rotate(90,blueTriangle)),270 - (image-width(rotate(90,blueTriangle)) / 2) , 85, base2 )))))))))))