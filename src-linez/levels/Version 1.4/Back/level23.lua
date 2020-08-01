local data =
{
	{
		{
			data = "background", { file = "backgroundRed" }
		},
		{
			data = "grid", { alpha = 9 }
		},
		{
			data = "stars", { count = 5 }
		},
		{
			data = "tutorial",
			{
			}
		},
		{
			data = "levelIndicator", { alpha = .1 }
		},
		{
			data = "shapes",
			{
				{ type = "circle", x = 200, y = 100 },
			}
		},
		{
			data = "holes", 
			{ 
				{ type = "circle", x = display.contentWidth - 200, y = 550 },
			}
		},
		{
			data = "objects", 
			{ 
				{
					type = "portal", 
					id = nil,
					width = 0,
					x = 200,
					y = 550,					
					anchorX = .5,
					anchorY = .5,
					rotation = 0, 
					rotationSpeed = 1.5, 
					rotationStep = 2,
					bounce = 3, 
					shape = nil, 
					move = false, 
					moveSpeed = 2, 
					moveDirecton = "left",
					portalLocation = { x = display.contentWidth - 200, y = 100 }
				},	
				{ 
					type = "breakoutLine", 
					id = "",
					width = 800,
					x = display.contentCenterX, 
					y = display.contentCenterY, 
					anchorX = 1,
					anchorY = .5,
					rotation = 0, 
					rotationSpeed = 0, 
					bounce = 1.8, 
					shape = nil, 
					move = false, 
					moveSpeed = 0, 
					moveDirecton = nil
				},
				{ 
					type = "breakoutLine", 
					id = "",
					width = 800,
					x = display.contentCenterX, 
					y = display.contentCenterY, 
					anchorX = 0,
					anchorY = .5,
					rotation = 0, 
					rotationSpeed = 0, 
					bounce = 1.8, 
					shape = nil, 
					move = false, 
					moveSpeed = 0, 
					moveDirecton = nil
				},
				{ 
					type = "line", 
					id = "",
					width = display.contentHeight,
					x = display.contentCenterX, 
					y = 400, 
					anchorX = .5,
					anchorY = .5,
					rotation = 90, 
					rotationSpeed = 0, 
					bounce = 1.8, 
					shape = nil, 
					move = false, 
					moveSpeed = 0, 
					moveDirecton = nil
				},
				{
					type = "gravitySwitch", 
					id = "gravityReverse",
					width = 0,
					x = display.contentWidth - 200,
					y = 250,					
					anchorX = .5,
					anchorY = .5,
					rotation = 0, 
					rotationSpeed = 1.5, 
					rotationStep = 2,
					bounce = 3, 
					shape = nil, 
					move = false, 
					moveSpeed = 2, 
					moveDirecton = "left"
				},
				
		
			}
		},
	},
}
return data