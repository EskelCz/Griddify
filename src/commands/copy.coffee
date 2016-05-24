_ = require 'photoshopjs-core'

module.exports = copy = ->

	doc = _.docs.active

	#doneIcon = document.getElementById 'done'
	#doneIcon.classList.add 'invisible'

	try
		domDoc = doc.asDom()
	catch
		throw Error "No document seems to be open"

	guides = app.activeDocument.guides
	if guides.length == 0
		alert "No guides exist"

	gH = ''
	gV = ''

	for guide in guides
		if guide.direction.toString() == 'Direction.HORIZONTAL'
			gH += parseInt(guide.coordinate.value) + ','
		else
			gV += parseInt(guide.coordinate.value) + ','

	gH = gH.replace /,$/, ''
	gV = gV.replace /,$/, ''

	currentGuides = 'Layer Guides' + "¬" + gH + "¬" + gV
	desc2 = new ActionDescriptor()
	
	desc2.putString 0, currentGuides.toSource()
	app.putCustomOptions '7a301ec0-afde-11e1-afa6-0800200c9a66', desc2, true

	#doneIcon.classList.remove 'invisible'

_.panel 'copy', ->

	copy()
