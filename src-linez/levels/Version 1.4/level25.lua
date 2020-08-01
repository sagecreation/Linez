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
				{ type = "circle", x = 800, y = display.contentCenterY - 150 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "line",
					id = "",
					width = 400,
					x = 700,
					y = display.contentCenterY - 50,
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
					type = "gravitySwitch",
					id = "",
					width = nil,
					x = 600,
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
					x = 50,
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
			}
		},
	},
}
return data
