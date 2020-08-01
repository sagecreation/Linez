local data =
{
	{
		{
			data = "background", { scale = 2, grid = "babyBlue", gravity = "up" }
		},
		{
			data = "stars", { count = 25 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = 100, y = 600 },
				{ type = "square", x = display.contentCenterX, y = 600 },
				{ type = "triangle", x = display.contentWidth - 100, y = 600 },
			}
		},
		{
			data = "holes",
			{
				{ type = "triangle", x = 100, y = 100 },
				{ type = "circle", x = display.contentCenterX, y = 100 },
				{ type = "square", x =  display.contentWidth - 100, y = 100 },
			}
		},
		{
			data = "objects",
			{
				{
					type = "bumperRed",
					id = nil,
					width = nill,
					x = display.contentCenterX,
					y = display.contentCenterY,
					anchorX = .5,
					anchorY = .5,
					rotation = 0,
					rotationSpeed = nil,
					bounce = 7,
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
