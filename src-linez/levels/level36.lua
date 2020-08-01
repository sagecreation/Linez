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
				{ type = "circle", x = display.contentCenterX , y = 125 },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = display.contentWidth - 100, y = 125 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "bumper",
					id = nil,
					width = nill,
					x = display.contentCenterX,
					y = display.contentCenterY,
					anchorX = .5,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = nil,
					bounce = 2.5,
					shape = nil,
					move = nil,
					moveSpeed = 2500,
					moveDirecton = "left"
				},
				{
					type = "bumper",
					id = nil,
					width = nill,
					x = display.contentCenterX - 100,
					y = display.contentCenterY,
					anchorX = .5,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = nil,
					bounce = 2.5,
					shape = nil,
					move = nil,
					moveSpeed = 1500,
					moveDirecton = "left"
				},
				{
					type = "bumper",
					id = nil,
					width = nill,
					x = display.contentCenterX - 200,
					y = display.contentCenterY,
					anchorX = .5,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = nil,
					bounce = 2.5,
					shape = nil,
					move = nil,
					moveSpeed = 4000,
					moveDirecton = "left"
				},
				{
					type = "bumper",
					id = nil,
					width = nill,
					x = display.contentCenterX + 100,
					y = display.contentCenterY,
					anchorX = .5,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = nil,
					bounce = 2.5,
					shape = nil,
					move = nil,
					moveSpeed = 1500,
					moveDirecton = "left"
				},
				{
					type = "bumper",
					id = nil,
					width = nill,
					x = display.contentCenterX + 200,
					y = display.contentCenterY,
					anchorX = .5,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = nil,
					bounce = 2.5,
					shape = nil,
					move = nil,
					moveSpeed = 4000,
					moveDirecton = "left"
				},
				{
					type = "gravitySwitch",
					id = "",
					width = nil,
					x = display.contentCenterX,
					y = 500,
					anchorX = .5,
					anchorY = .5,
					rotation = nil,
					rotationSpeed = nil,
					bounce = .01,
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
