local data =
{
	{
		{
			data = "background", { scale = 1, grid = "pink" }
		},
		{
			data = "stars", { count = 15 }
		},
		{
			data = "plinks",
			{
				{ type = "square", x = 100, y = 125 },
				{ type = "circle", x = display.contentWidth - 100, y = 125 },
			}
		},
		{
			data = "holes",
			{
				{ type = "square", x = display.contentCenterX - 100, y = 250 },
				{ type = "circle", x = display.contentCenterX + 100, y = 250 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "breakoutLine",
					id = "",
					width = 400,
					x = display.contentCenterX,
					y = 500,
					anchorX = .5,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = nil,
					bounce = 3,
					shape = nil,
					move = nil,
					moveSpeed = 1000,
					moveDirecton = "left"
				},
				{
					type = "portal",
					id = 1,
					width = nill,
					x = display.contentCenterX,
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
					x = display.contentCenterX,
					y = 125,
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
					id = 3,
					width = nill,
					x = 100,
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
					id = 4,
					width = nill,
					x = display.contentWidth - 100,
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
					type = "line",
					id = "",
					width = 150,
					x = display.contentCenterX - 200,
					y = 225,
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
					x = display.contentCenterX + 200,
					y = 225,
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
