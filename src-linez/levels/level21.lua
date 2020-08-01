local data =
{
	{
		{
			data = "background", { scale = 1, hint = true, grid = "green" }
		},
		{
			data = "stars", { count = 10 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = display.contentCenterX, y = 250 },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = 100, y = 250 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "portal",
					id = 1,
					width = nill,
					x = 300,
					y = 75,
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
					x = 750 ,
					y = 550,
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
			}
		},
	},
}
return data
