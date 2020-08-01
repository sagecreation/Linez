local data =
{
	{
		{
			data = "background", { scale = 1, grid = "green" }
		},
		{
			data = "stars", { count = 8 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = display.contentCenterX, y = 150 },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = display.contentCenterX - 200, y = 150 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "line",
					id = "",
					width = 200,
					x = display.contentCenterX - 200,
					y = display.contentCenterY,
					anchorX = .5,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = nil,
					bounce = 3,
					shape = nil,
					move = nil,
					moveSpeed = 1500,
					moveDirecton = "left"
				},
				{
					type = "triangle",
					id = "",
					width = nil,
					x = display.contentCenterX,
					y = display.contentHeight - 50,
					anchorX = .5,
					anchorY = 1,
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
