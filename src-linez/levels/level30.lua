local data =
{
	{
		{
			data = "background", { scale = 1, grid = "pink" }
		},
		{
			data = "stars", { count = 30 }
		},
		{
			data = "plinks",
			{
				{ type = "square", x = display.contentWidth - 100, y = 125 },
				{ type = "circle", x = display.contentWidth - 100, y = 200 },
			}
		},
		{
			data = "holes",
			{
				{ type = "square", x = 100, y = 125 },
				{ type = "circle", x = 100, y = 550 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "gravitySwitch",
					id = nil,
					width = nill,
					x = display.contentWidth - 100 ,
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
			}
		},
	},
}
return data
