local data =
{
	{
		{
			data = "background", { scale = 1, grid = "green" }
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
				{ type = "circle", x = display.contentWidth - 100, y = 100 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "portal",
					id = 1,
					width = nill,
					x = display.contentCenterX,
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
				{
					type = "portal",
					id = 2,
					width = nill,
					x = 100 ,
					y = 100,
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
					x = display.contentWidth - 100 ,
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
				{
					type = "gravitySwitch",
					id = nil,
					width = nill,
					x = 100 ,
					y = 550,
					anchorX = .5,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = nil,
					bounce = .01,
					shape = nil,
					move = nil,
					moveSpeed = nil,
					moveDirecton = nil
				},
				{
					type = "line",
					id = "",
					width = 500,
					x = display.contentCenterX - 300,
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
				{
					type = "line",
					id = "",
					width = 350,
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
					width = 500,
					x = display.contentCenterX + 300,
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
			}
		},
	},
}
return data
