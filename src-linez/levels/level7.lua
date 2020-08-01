local data =
{
	{
		{
			data = "background", { scale = 1, grid = "orange" }
		},
		{
			data = "stars", { count = 15 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = display.contentCenterX - 150, y = 150 },
				{ type = "square", x = display.contentCenterX + 150, y = 150 },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = display.contentCenterX + 150, y = 500 },
				{ type = "square", x = display.contentCenterX - 150, y = 500 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "line",
					id = "",
					width = 150,
					x = display.contentCenterX,
					y = display.contentCenterY,
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
	},
}
return data
