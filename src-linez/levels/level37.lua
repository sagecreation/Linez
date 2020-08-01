local data =
{
	{
		{
			data = "background", { scale = 2, grid = "babyBlue" }
		},
		{
			data = "stars", { count = 15 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = 150 , y = 100 },
				{ type = "square", x = display.contentWidth - 150 , y = 100 },
			}
		},
		{
			data = "holes",
			{
				{ type = "square", x = 150, y = 500 },
				{ type = "circle", x = display.contentWidth - 150, y = 500 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "smile",
					id = nil,
					width = nill,
					x = display.contentCenterX,
					y = display.contentCenterY,
					anchorX = .5,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = 6000,
					bounce = 5,
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
