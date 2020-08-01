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
				{ type = "circle", x = display.contentWidth - 100, y = 150 },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = display.contentCenterX, y = display.contentHeight - 50 }
			}
		},
		{
			data = "objects",
			{
				{
					type = "line",
					id = "",
					width = 150,
					x = display.contentCenterX - 50,
					y = display.contentHeight - 75,
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
					width = 150,
					x = display.contentCenterX + 50,
					y = display.contentHeight - 75,
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
			},
		},
	}
}
return data
