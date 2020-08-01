local data =
{
	{
		{
			data = "background", { file = "backgroundBlue" }
		},
		{
			data = "tutorial", 
			{
				{ x = 0, y = 250, anchorX = 0, anchorY = .5, text = "Shapes only fit into their own holes" },
			}
		},
		{
			data = "levelIndicator", { alpha = .2 }
		},
		{
			data = "shapes",
			{
				{ type = "circle", x = display.contentCenterX - 150, y = 150 },
				{ type = "square", x = display.contentCenterX + 150, y = 150 },
			}
		},
		{
			data = "holes", 
			{
				{ type = "circle", x = 550, y = 850 },
				{ type = "square", x = 550, y = 850 }
			}
		},
		{
			data = "objects",
			{
				{ 
					type = "line", 
					id = "",
					width = 350,
					x = display.contentCenterX, 
					y = display.contentCenterY, 
					anchorX = .5,
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
	}
}
return data