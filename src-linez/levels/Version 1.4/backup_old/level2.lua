local data =
{
	{
		{
			data = "background", { file = "backgroundBlue" }
		},
		{
			data = "tutorial",
			{
				{ x = 10, y = 400, anchorX = 0, anchorY = .5, text = "sometimes, more than one line is needed" },
			}
		},
		{
			data = "levelIndicator", { alpha = .1 }
		},
		{
			data = "shapes",
			{
				{ type = "circle", x = 550, y = 200 },
			}
		},
		{
			data = "holes", 
			{ 
				{ type = "circle", x = display.contentCenterX, y = 800 },
			}
		},
		{
			data = "objects", 
			{ 
				{ 
					type = "line", 
					id = "",
					width = 300,
					x = display.contentCenterX, 
					y = 600, 
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
			}
		},
	},
}
return data