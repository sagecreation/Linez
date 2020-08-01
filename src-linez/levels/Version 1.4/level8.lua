local data =
{
	{
		{
			data = "background", { scale = 1, grid = "black" }
		},
		{
			data = "stars", { count = 5 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = 100, y = 150 },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = 100, y = 500 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "line",
					id = "",
					width = 200,
					x = 0,
					y = 150,
					anchorX = 0,
					anchorY = .5,
					rotation = 45,
					rotationSpeed = nil,
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
