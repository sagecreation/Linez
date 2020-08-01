local data =
{
	{
		{
			data = "background", { scale = 1, grid = "purple" }
		},
		{
			data = "stars", { count = 6 }
		},
		{
			data = "plinks",
			{
				{ type = "square", x = display.contentCenterX + 150, y = 150 },
			}
		},
		{
			data = "holes",
			{
				{ type = "square", x = 150, y = 150 },
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
				{
					type = "line",
					id = "",
					width = 100,
					x = display.contentWidth - 50,
					y = 500,
					anchorX = 1,
					anchorY = .5,
					rotation = 315,
					rotationSpeed = nil,
					bounce = 4,
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
