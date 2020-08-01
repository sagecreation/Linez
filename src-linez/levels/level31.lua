local data =
{
	{
		{
			data = "background", { scale = 2, hint = true, grid = "babyBlue" }
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
					width = display.contentWidth * 3,
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
					type = "portal",
					id = 1,
					width = nill,
					x = display.contentCenterX - 150,
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
					id = 2,
					width = nill,
					x = 200,
					y = display.contentCenterY + 50,
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
