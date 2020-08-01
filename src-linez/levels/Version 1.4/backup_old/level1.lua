local data =
{
	{
		{
			data = "background", { file = "backgroundBlue" }
		},
		{
			data = "tutorial",
			{
				{ x = 100, y = 180, anchorX = 0, anchorY = 0, text = "Get this circle", disapear = false },
				{ x = 550, y = 575, anchorX = .5, anchorY = 1, text = "Into this hole" , disapear = false },
				{ x = 15, y = 450, anchorX = 0, anchorY = .5, text = "By drawing lines" , disapear = false },
				{ x = display.contentCenterX, y = 850, anchorX = .5, anchorY = .5, text = "Press play to start level" , disapear = false },
			}
		},
		{
			data = "levelIndicator", { alpha = .1 }
		},
		{
			data = "shapes",
			{
				{ type = "circle", x = 125, y = 200, bounceCount = 10 },
			}
		},
		{
			data = "holes", 
			{ 
				{ type = "circle", x = 550, y = 625 },
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