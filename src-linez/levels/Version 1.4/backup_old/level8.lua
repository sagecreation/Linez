local data =
{
	{
		{
			data = "background", { file = "backgroundOrange" }
		},
		{
			data = "tutorial",
			{
				{ x = 200, y = display.contentHeight - 200, anchorX = .5, anchorY = .5, text = "" },
			}
		},
		{
			data = "levelIndicator", { alpha = .2 }
		},
		{
			data = "shapes",
			{
				{ type = "square", x = 50, y = 150 },
				{ type = "circle", x = display.contentCenterX, y = 150 },
				{ type = "star", x = display.contentWidth - 50, y = 150 },
			}
		},
		{
			data = "holes", 
			{ 
				{ type = "square", x = display.contentWidth - 50, y = 800 },
				{ type = "circle", x = display.contentCenterX, y = 800 },
				{ type = "star", x = 50, y = 800 },

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