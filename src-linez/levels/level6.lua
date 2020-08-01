local data =
{
	{
		{
			data = "background", { scale = 1, hint = true, grid = "orange" }
		},
		{
			data = "stars", { count = 8 }
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

			},
		},
	},
}
return data
