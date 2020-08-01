local data =
{
	{
		{
			data = "background", { file = "backgroundGreen" }
		},
		{
			data = "tutorial", 
			{
				{ x = 300, y = 600, anchorX = 0, anchorY = .5, text = "Square Pegs don't fit in round holes" },
			}
		},
		{
			data = "levelIndicator", { alpha = .2 }
		},
		{
			data = "shapes",
			{
				{ type = "circle", x = 100, y = 200 },
			}
		},
		{
			data = "holes", 
			{
				{ type = "circle", x = 550, y = 200 },
			}
		},
		{
			data = "objects",
			{
				{ 
					type = "line", 
					id = "",
					width = 200,
					x = 160, 
					y = 700, 					
					anchorX = .5,
					anchorY = .5,
					rotation = 0, 
					rotationSpeed = 1.5, 
					rotationStep = 2,
					bounce = 3, 
					shape = nil, 
					move = false, 
					moveSpeed = 0, 
					moveDirecton = nil
				},
				{ 
					type = "line", 
					id = "",
					width = 250,
					x = display.contentWidth, 
					y = 300, 
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
			},
		},
	},
}
return data