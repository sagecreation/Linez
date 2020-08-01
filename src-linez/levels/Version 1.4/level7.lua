local data =
{
	{
		{
			data = "background", { scale = 1, grid = "black" }
		},
		{
			data = "stars", { count = 10 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = 100, y = 300 },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = display.contentWidth - 100, y = 350 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "line",
					id = "",
					width = 200,
					x = 150,
					y = 550,
					anchorX = .5,
					anchorY = .5,
					rotation = 30,
					rotationSpeed = nil,
					bounce = 3,
					shape = nil,
					move = nil,
					moveSpeed = nil,
					moveDirecton = nil
				},
				{
					type = "line",
					id = "",
					width = 100,
					x = display.contentWidth - 50,
					y = 300,
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
			},
		},
	}
}
return data
