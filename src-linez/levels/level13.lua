local data =
{
	{
		{
			data = "background", { scale = 1, grid = "purple" }
		},
		{
			data = "stars", { count = 5 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = display.contentCenterX - 150, y = 150 },
				{ type = "square", x = display.contentCenterX + 150, y = 150 },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = display.contentCenterX + 150, y = 500 },
				{ type = "square", x = display.contentCenterX - 150, y = 500 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "line",
					id = "",
					width = 200,
					x = display.contentCenterX - 200,
					y = display.contentCenterY,
					anchorX = .5,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = nil,
					bounce = 3,
					shape = nil,
					move = nil,
					moveSpeed = 1500,
					moveDirecton = "left"
				},
			}
		},
	},
}
return data
