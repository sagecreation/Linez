local data =
{
	{
		{
			data = "background", { scale = 1, grid = "green" }
		},
		{
			data = "stars", { count = 30 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = display.contentCenterX - 50, y = 200 },
				{ type = "square", x = display.contentCenterX + 50, y = 200 },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = 100, y = 200 },
				{ type = "square", x = 200, y = 200 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "portal",
					id = 1,
					width = nill,
					x = 200,
					y = 100,
					anchorX = .5,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = nil,
					bounce = nil,
					shape = nil,
					move = nil,
					moveSpeed = nil,
					moveDirecton = nil
				},
				{
					type = "portal",
					id = 2,
					width = nill,
					x = 800 ,
					y = 150,
					anchorX = .5,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = nil,
					bounce = nil,
					shape = nil,
					move = nil,
					moveSpeed = nil,
					moveDirecton = nil
				},
				{
					type = "gravitySwitch",
					id = 2,
					width = nill,
					x = 200 ,
					y = 600,
					anchorX = .5,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = nil,
					bounce = .01,
					shape = nil,
					move = nil,
					moveSpeed = nil,
					moveDirecton = nil
				},
				{
					type = "line",
					id = "",
					width = 500,
					x = 350,
					y = 300,
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
					type = "line",
					id = "",
					width = 350,
					x = 350,
					y = 303,
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
			}
		},
	},
}
return data
