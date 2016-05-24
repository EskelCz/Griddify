_ = require 'photoshopjs-core'

module.exports = clear = ->

	desc102 = new ActionDescriptor() 
	ref70 	= new ActionReference() 
	id556 	= charIDToTypeID "Dlt " 
	id557 	= charIDToTypeID "null" 
	id558 	= charIDToTypeID "Gd  " 
	id559 	= charIDToTypeID "Ordn" 
	id560 	= charIDToTypeID "Al  " 
	ref70.putEnumerated id558, id559, id560 
	desc102.putReference id557, ref70
	executeAction id556, desc102, DialogModes.NO

_.panel 'clear', ->
	clear()
