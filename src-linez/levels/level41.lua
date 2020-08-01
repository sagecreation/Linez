local data =
{
	{
		{
			data = "background", { scale = 2, grid = "babyBlue", gravity = "up" }
		},
		{
			data = "stars", { count = 15 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = 100, y = 600 },
				{ type = "square", x = display.contentWidth - 100, y = 600 },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = 100, y = 400 },
				{ type = "square", x = display.contentWidth - 100, y = 400 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "line2",
					id = "",
					width = 300,
					x = 200,
					y = 450,
					anchorX = 1,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = nil,
					bounce = 3,
					shape = nil,
					move = nil,
					moveSpeed = nil,
					moveDirecton = nil
				},
				{
					type = "line2",
					id = "",
					width = 300,
					x = display.contentWidth - 200,
					y = 450,
					anchorX = 0,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = nil,
					bounce = 3,
					shape = nil,
					move = nil,
					moveSpeed = nil,
					moveDirecton = nil
				},
				{
					type = "line2",
					id = "",
					width = 300,
					x = 200,
					y = 450,
					anchorX = 1,
					anchorY = .5,
					rotation = 90,
					rotationSpeed = nil,
					bounce = 3,
					shape = nil,
					move = nil,
					moveSpeed = nil,
					moveDirecton = nil
				},
				{
					type = "line2",
					id = "",
					width = 200,
					x = display.contentWidth - 200,
					y = 350,
					anchorX = 1,
					anchorY = .5,
					rotation = 90,
					rotationSpeed = nil,
					bounce = 3,
					shape = nil,
					move = nil,
					moveSpeed = nil,
					moveDirecton = nil
				},
				{
					type = "gravitySwitch",
					id = "",
					width = nil,
					x = display.contentCenterX,
					y = display.contentCenterY - 150,
					anchorX = .5,
					anchorY = .5,
					rotation = nil,
					rotationSpeed = nil,
					bounce = .01,
					shape = nil,
					move = nil,
					moveSpeed = nil,
					moveDirecton = nil
				},
			}
		},
	},
}
return data
