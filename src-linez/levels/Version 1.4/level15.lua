local data =
{
	{
		{
			data = "background", { scale = 1, grid = "orange" }
		},
		{
			data = "grid", { alpha = 9 }
		},
		{
			data = "stars", { count = 10 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = 50, y = 150 },
				{ type = "square", x = 50, y = 250 },
			}
		},
		{
			data = "holes",
			{
				{ type = "square", x = display.contentWidth - 50, y = 150 },
				{ type = "circle", x = display.contentWidth - 50, y = 250 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "line",
					id = "",
					width = 200,
					x = 50,
					y = 550,
					anchorX = .5,
					anchorY = .5,
					rotation = 30,
					rotationSpeed = nil,
					bounce = 2.5,
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
