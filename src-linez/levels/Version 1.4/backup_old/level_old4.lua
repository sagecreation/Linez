local data =
{
	{
		{
			data = "background", { file = "backgroundRed" }
		},
		{
			data = "tutorial", 
			{
				{ x = 0, y = 700, anchorX = 0, anchorY = .5, text = "it's all about inertia" },
			}
		},
		{
			data = "levelIndicator", { alpha = .2 }
		},
		{
			data = "shapes",
			{
				{ type = "circle", x = display.contentCenterX, y = 150 },
			}
		},
		{
			data = "holes", 
			{
				{ type = "circle", x = 600, y = 450 }
			}
		},
		{
			data = "objects",
			{
				{ 
					type = "line", 
					id = "",
					width = 500,
					x = display.contentCenterX, 
					y = 350, 
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
				{ 
					type = "line", 
					id = "",
					width = 300,
					x = display.contentCenterX, 
					y = 800, 
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
				{ 
					type = "line", 
					id = "",
					width = 200,
					x = display.contentCenterX + 150, 
					y = 800, 
					anchorX = .5,
					anchorY = 1,
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
					width = 200,
					x = display.contentCenterX + 250, 
					y = 355, 
					anchorX = 1,
					anchorY = 1,
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