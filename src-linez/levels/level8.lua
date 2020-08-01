local data =
{
	{
		{
			data = "background", { scale = 1, grid = "orange" }
		},
		{
			data = "stars", { count = 15 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = display.contentCenterX + 150, y = 150 },
				{ type = "square", x = 150, y = 150 },
			}
		},
		{
			data = "holes",
			{
				{ type = "square", x = display.contentCenterX + 300, y = 450 },
				{ type = "circle", x = 150, y = 550 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "line",
					id = "",
					width = 350,
					x = display.screenOriginX,
					y = display.contentCenterY,
					anchorX = 0,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = nil,
					rotationStep = nil,
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
