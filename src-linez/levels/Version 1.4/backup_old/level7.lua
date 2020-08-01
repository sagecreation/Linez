local data =
{
	{
		{
			data = "background", { file = "backgroundGrey" }
		},
		{
			data = "tutorial",
			{
				{ x = 200, y = display.contentHeight - 200, anchorX = .5, anchorY = .5, text = "" },
			}
		},
		{
			data = "levelIndicator", { alpha = .1 }
		},
		{
			data = "shapes",
			{
				{ type = "circle", x = 200, y = 600 },
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
					id = "row1",
					width = 150,
					x = display.contentWidth - 25, 
					y = 800, 
					anchorX = 1,
					anchorY = .5,
					rotation = 0, 
					rotationSpeed = 0, 
					bounce = 1.8, 
					shape = nil, 
					move = true, 
					moveSpeed = 20, 
					moveDirecton = "up"
				},
			}
		},
	},
}
return data