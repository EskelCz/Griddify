_ = require 'photoshopjs-core'

module.exports = paste = ->

	doc = _.docs.active

	try
		domDoc = doc.asDom()
	catch
		throw Error "No document seems to be open"

	try
		desc1 = app.getCustomOptions '7a301ec0-afde-11e1-afa6-0800200c9a66'
		layerGuides = eval desc1.getString(0)
	catch e then return

	ar1 = layerGuides.toString().split('¬')
	Hor = ar1[1].toString().split(',')
	Ver = ar1[2].toString().split(',')

	for H in Hor
		if H
			activeDocument.guides.add Direction.HORIZONTAL, new UnitValue(Number(H), 'px')

	for V in Ver
		if V
			activeDocument.guides.add Direction.VERTICAL, new UnitValue(Number(V), 'px')

_.panel 'paste', ->
	paste()
