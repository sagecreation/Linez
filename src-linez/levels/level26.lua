local data =
{
	{
		{
			data = "background", { scale = 1, hint = true, grid = "pink" }
		},
		{
			data = "stars", { count = 10 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = display.contentCenterX, y = 100 },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = display.contentCenterX, y = 400 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "line",
					id = "",
					width = 190,
					x = display.contentCenterX + 100,
					y = display.contentCenterY,
					anchorX = 0,
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
					type = "breakoutLine",
					id = "",
					width = 200,
					x = display.contentCenterX,
					y = display.contentCenterY,
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
					width = 190,
					x = display.contentCenterX - 100,
					y = display.contentCenterY,
					anchorX = 0,
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
