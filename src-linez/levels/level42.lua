local data =
{
	{
		{
			data = "background", { scale = 2, grid = "babyBlue", gravity = "up" }
		},
		{
			data = "stars", { count = 25 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = 50, y = 600 },
				{ type = "square", x = 150, y = 600 },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = 50, y = 100 },
				{ type = "square", x = 150, y = 100 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "line2",
					id = "",
					width = 300,
					x = 200,
					y = 450,
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
					type = "line2",
					id = "",
					width = 400,
					x = 200,
					y = 450,
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
				{
					type = "bumperRed",
					id = nil,
					width = nill,
					x = display.contentCenterX,
					y = display.contentCenterY,
					anchorX = .5,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = nil,
					bounce = 7,
					shape = nil,
					move = nil,
					moveSpeed = nil,
					moveDirecton = nil
				},
				{
					type = "portal",
					id = 1,
					width = nill,
					x = 750,
					y = 600,
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
					x = 100,
					y = 400,
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
