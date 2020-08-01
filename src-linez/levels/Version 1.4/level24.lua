local data =
{
	{
		{
			data = "background", { scale = 1, grid = "red" }
		},
		{
			data = "stars", { count = 10 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = 800, y = display.contentCenterY },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = display.contentCenterX, y = display.contentCenterY },
			}
		},
		{
			data = "objects",
			{
				{
					type = "line",
					id = "",
					width = 100,
					x = display.contentCenterX,
					y = display.contentCenterY + 50,
					anchorX = .5,
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
					type = "line",
					id = "",
					width = 100,
					x = display.contentCenterX - 50,
					y = display.contentCenterY + 2.5,
					anchorX = .5,
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
					type = "line",
					id = "",
					width = 100,
					x = display.contentCenterX + 50,
					y = display.contentCenterY + 2.5,
					anchorX = .5,
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
					y = 600,
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
				{
					type = "gravitySwitch",
					id = "",
					width = nil,
					x = 250,
					y = 600,
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
				{
					type = "gravitySwitch",
					id = "",
					width = nil,
					x = 100,
					y = 200,
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
				{
					type = "gravitySwitch",
					id = "",
					width = nil,
					x = display.contentCenterX + 200,
					y = 150,
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
				{
					type = "gravitySwitch",
					id = "",
					width = nil,
					x = display.contentCenterX - 200,
					y = 150,
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
