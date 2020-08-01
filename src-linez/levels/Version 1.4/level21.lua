local data =
{
	{
		{
			data = "background", { scale = 1, hint = true, grid = "red" }
		},
		{
			data = "stars", { count = 10 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = display.contentCenterX, y = 150 },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = 300, y = 150 },
			}
		},
		{
			data = "objects",
			{
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
