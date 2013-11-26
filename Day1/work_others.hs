
	let colors= ["black", "white","blue","yellow","red"]
	[(a,b) | a<-colors, b<-colors, a<=b]

[(factor,multiplier,factor * multiplier)| factor <- numbers, multiplier <- numbers] 

let colors= ["red" , "green" , "blue"]
 
 [("Alabama" ,alabamaColor, "Mississipi", mississipiColor, "Georgia", georgiaColor, "Tennessee", tennesseeColor, "Florida", floridaColor) | alabamaColor  <- colors, mississipiColor <- colors, georgiaColor <- colors, tennesseeColor <- colors, floridaColor <- colors, mississipiColor /= tennesseeColor, mississipiColor /= alabamaColor, alabamaColor /= tennesseeColor, alabamaColor /= georgiaColor, alabamaColor /= floridaColor,georgiaColor /= floridaColor, georgiaColor /= tennesseeColor]