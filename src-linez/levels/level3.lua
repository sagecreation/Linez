local data =
{
	{
		{
			data = "background", { scale = 1, hint = true, grid = "black" }
		},
		{
			data = "stars", { count = 15 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = display.contentCenterX + 400, y = 150 },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = display.contentCenterX - 300, y = 500 },
			}
		},
		{
			data = "objects",
			{
			},
		},
	}
}
return data
