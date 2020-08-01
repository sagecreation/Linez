local data =
{
	{
		{
			data = "background", { scale = 1, grid = "black" }
		},
		{
			data = "stars", { count = 10 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = 50, y = 150 },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = display.contentCenterX + 150, y = 150 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "line",
					id = "",
					width = 150,
					x = 0,
					y = 500,
					anchorX = 0,
					anchorY = 1,
					rotation = 55,
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
					width = 150,
					x = display.contentWidth - 100,
					y = 600,
					anchorX = 1,
					anchorY = 1,
					rotation = 125,
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
					width = 150,
					x = 350,
					y = 175,
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
			}
		},
	},
}
return data
