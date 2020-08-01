local data =
{
	{
		{
			data = "background", { file = "backgroundBlue" }
		},
		{
			data = "tutorial", 
			{
				{ x = 0, y = 250, anchorX = 0, anchorY = .5, text = "Momentum is your friend" },
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
				{ type = "circle", x = 150, y = 825 }
			}
		},
		{
			data = "objects",
			{
				{ 
					type = "line", 
					id = "",
					width = 500,
					x = display.contentWidth, 
					y = 350, 
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
					type = "line", 
					id = "",
					width = 250,
					x = 500, 
					y = 625, 
					anchorX = .5,
					anchorY = 0,
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
					width = 400,
					x = 100, 
					y = 750, 
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
					width = 250,
					x = 100, 
					y = 750, 
					anchorX = .5,
					anchorY = 0,
					rotation = 90, 
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