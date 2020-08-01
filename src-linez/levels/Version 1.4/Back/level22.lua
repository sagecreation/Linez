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
				{ type = "circle", x = display.contentCenterX + 200, y = 200 },
			}
		},
		{
			data = "holes", 
			{ 
				{ type = "circle", x = 300, y = 200 },
			}
		},
		{
			data = "objects", 
			{ 
				{
					type = "portal", 
					id = nil,
					width = 0,
					x = display.contentCenterX + 200,
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
					portalLocation = { x = display.contentCenterX + 200, y = 200 }
				},	
				{
					type = "portal", 
					id = nil,
					width = 0,
					x = 400,
					y = 500,					
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
					portalLocation = { x = 100, y = 400 }
				},	
				{
					type = "portal", 
					id = nil,
					width = 0,
					x = display.contentCenterX + 350,
					y = 300,					
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
					portalLocation = { x = display.contentCenterX, y = 400 }
				},	
		
			}
		},
	},
}
return data