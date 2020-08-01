local data =
{
	{
		{
			data = "background", { scale = 1, grid = "black" }
		},
		{
			data = "stars", { count = 6 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = 150, y = 150 },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = 275, y = 100 },
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
					bounce = 2.5,
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
