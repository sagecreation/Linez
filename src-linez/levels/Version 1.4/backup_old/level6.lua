local data =
{
	{
		{
			data = "background", { file = "backgroundRed" }
		},
		{
			data = "tutorial", 
			{
				{ x = 300, y = 800, anchorX = 0, anchorY = .5, text = "Learn to play the bank" },
			}
		},
		{
			data = "levelIndicator", { alpha = .2 }
		},
		{
			data = "shapes",
			{
				{ type = "circle", x = 600, y = 150 },
			}
		},
		{
			data = "holes", 
			{
				{ type = "circle", x = 500, y = 425 }
			}
		},
		{
			data = "objects",
			{

				{ 
					type = "line", 
					id = "",
					width = 600,
					x = display.contentCenterX, 
					y = 300, 
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
					width = 150,
					x = display.contentCenterX, 
					y = 295, 
					anchorX = 0,
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
					type = "line", 
					id = "",
					width = 150,
					x = 0, 
					y = 800, 
					anchorX = 0,
					anchorY = .5,
					rotation = 30, 
					rotationSpeed = 0, 
					bounce = 2.5, 
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