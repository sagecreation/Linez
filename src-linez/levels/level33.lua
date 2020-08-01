local data =
{
	{
		{
			data = "background", { scale = 2, grid = "babyBlue" }
		},
		{
			data = "stars", { count = 15 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = display.contentCenterX, y = display.contentCenterY },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = display.contentCenterX, y = 75 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "bumper",
					id = nil,
					width = nill,
					x = 150,
					y = 550,
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
					x = display.contentWidth - 100,
					y = display.contentCenterY,
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
