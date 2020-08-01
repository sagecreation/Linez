local data =
{
	{
		{
			data = "background", { scale = 2, grid = "babyBlue" }
		},
		{
			data = "stars", { count = 25 }
		},
		{
			data = "plinks",
			{
				{ type = "circle", x = 100, y = 100 },
				{ type = "square", x = display.contentCenterX, y = 100 },
				{ type = "triangle", x = display.contentWidth - 100, y = 100 },
			}
		},
		{
			data = "holes",
			{
				{ type = "triangle", x = 100, y = 600 },
				{ type = "circle", x = display.contentCenterX, y = 600 },
				{ type = "square", x =  display.contentWidth - 100, y = 600 },
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
