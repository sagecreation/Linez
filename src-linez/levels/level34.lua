local data =
{
	{
		{
			data = "background", { scale = 2, grid = "babyBlue" }
		},
		{
			data = "stars", { count = 5 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = display.contentCenterX, y = 75 },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = display.contentCenterX + 150, y = 75 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "bumper",
					id = nil,
					width = nill,
					x = display.contentCenterX - 75,
					y = 500,
					anchorX = .5,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = nil,
					bounce = 2.5,
					shape = nil,
					move = nil,
					moveSpeed = nil,
					moveDirecton = nil
				},
				{
					type = "bumper",
					id = nil,
					width = nill,
					x = display.contentCenterX + 75,
					y = 500,
					anchorX = .5,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = nil,
					bounce = 2.5,
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
