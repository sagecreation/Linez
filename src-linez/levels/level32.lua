local data =
{
	{
		{
			data = "background", { scale = 2, grid = "babyBlue" }
		},
		{
			data = "stars", { count = 30 }
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
				{ type = "circle", x = display.contentWidth - 100, y = display.contentCenterY + 50 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "gravitySwitch",
					id = nil,
					width = nill,
					x = 100 ,
					y = 600,
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
					type = "line2",
					id = "",
					width = 800,
					x = 250,
					y = display.contentCenterY,
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
					width = 2000,
					x = 450,
					y = display.contentCenterY,
					anchorX = 0,
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
					type = "breakoutLine2",
					id = "",
					width = 200,
					x = 250,
					y = display.contentCenterY,
					anchorX = 0,
					anchorY = .5,
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
