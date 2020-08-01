local data =
{
	{
		{
			data = "background", { scale = 1, grid = "red" }
		},
		{
			data = "stars", { count = 25 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = 50, y = 400 },
				{ type = "square", x = display.contentWidth - 50, y = 400 },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = 50, y = 200 },
				{ type = "square", x = display.contentWidth - 50, y = 200 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "star",
					id = "",
					width = 100,
					x = display.contentCenterX,
					y = display.contentCenterY,
					anchorX = .5,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = 1500,
					bounce = 3,
					shape = nil,
					move = nil,
					moveSpeed = nil,
					moveDirecton = nil
				},
				{
					type = "gravitySwitch",
					id = "",
					width = 100,
					x = display.contentCenterX,
					y = display.contentHeight - 25,
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

			}
		},
	},
}
return data
