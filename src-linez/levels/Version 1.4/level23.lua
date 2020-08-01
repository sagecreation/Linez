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
				{ type = "circle", x = 100, y = 150 },
				{ type = "square", x = display.contentWidth - 100, y = 150 },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = display.contentCenterX - 50, y = 250 },
				{ type = "square", x = display.contentCenterX + 50, y = 250 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "line",
					id = "",
					width = 100,
					x = display.contentCenterX - 150,
					y = 250,
					anchorX = .5,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = 2000,
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
					x = display.contentCenterX + 150,
					y = 250,
					anchorX = .5,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = 2000,
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
					x = display.contentCenterX + 200,
					y = display.contentHeight - 25,
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
					x = display.contentCenterX - 200,
					y = display.contentHeight - 25,
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
			}
		},
	},
}
return data
