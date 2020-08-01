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
				{ type = "square", x = display.contentCenterX, y = 200 },
			}
		},
		{
			data = "holes", 
			{ 
				{ type = "square", x = display.contentCenterX + 300, y = 150 },
			}
		},
		{
			data = "objects", 
			{ 
				{
					type = "portal", 
					id = nil,
					width = 0,
					x = display.contentCenterX,
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
					portalLocation = { x = 100, y = 100 }
				},	
		
			}
		},
	},
}
return data