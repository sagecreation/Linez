local data =
{
	{
		{
			data = "background", { scale = 1, hint = true, grid = "green" }
		},
		{
			data = "stars", { count = 5 }
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
				{ type = "circle", x = display.contentCenterX, y = 500 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "line",
					id = "",
					width = 200,
					x = display.contentCenterX,
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
