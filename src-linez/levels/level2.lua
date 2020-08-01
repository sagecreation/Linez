local data =
{
	{
		{
			data = "background", { scale = 1, hint = true, grid = "black" }
		},
		{
			data = "stars", { count = 100 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = display.contentCenterX - 190, y = 125 },
			}
		},
		{
			data = "holes",
			{
				{ type = "circle", x = display.contentCenterX + 190, y = 450 },
			}
		},
		{
			data = "objects",
			{
			}
		},
	},
}
return data
