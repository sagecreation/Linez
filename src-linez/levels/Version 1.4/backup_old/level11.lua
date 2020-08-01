local data =
{
	{
		{
			data = "background", { file = "backgroundBlack" }
		},
		{
			data = "bounceCount", { count = 5 }
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
				{ type = "circle", x = 100, y = 250 },
			}
		},
		{
			data = "holes", 
			{ 
				{ type = "circle", x = display.contentWidth - 100, y = display.contentHeight - 100 },
			}
		},
		{
			data = "objects", 
			{ 
				{ 
					type = "portal", 
					id = "portal1",
					target = "portal2",
					color = "red",
					width = 40,
					height = 40,
					x = display.contentWidth - 175, 
					y = display.contentHeight - 350, 
					anchorX = .5,
					anchorY = .5,
					rotation = 0, 
					rotationSpeed = 0, 
					rotationStep = 0,
					bounce = 0, 
					shape = nil, 
					move = false, 
					moveSpeed = 0, 
					moveDirecton = nil
				},
				{ 
					type = "portal", 
					id = "portal2",
					target = nil,
					color = "red",
					width = 40,
					height = 40,
					x = 100, 
					y = 150, 
					anchorX = .5,
					anchorY = .5,
					rotation = 0, 
					rotationSpeed = 0, 
					rotationStep = 0,
					bounce = 0, 
					shape = nil, 
					move = false, 
					moveSpeed = 0, 
					moveDirecton = nil
				},
				{ 
					type = "portal", 
					id = "portal3",
					target = nil,
					color = "green",
					width = 40,
					height = 40,
					x = display.contentWidth - 100, 
					y = 250, 
					anchorX = .5,
					anchorY = .5,
					rotation = 0, 
					rotationSpeed = 0, 
					rotationStep = 0,
					bounce = 0, 
					shape = nil, 
					move = false, 
					moveSpeed = 0, 
					moveDirecton = nil
				},
				{ 
					type = "portal", 
					id = "portal4",
					target = "portal3",
					color = "green",
					width = 40,
					height = 40,
					x = 100, 
					y = display.contentHeight - 200, 
					anchorX = .5,
					anchorY = .5,
					rotation = 0, 
					rotationSpeed = 0, 
					rotationStep = 0,
					bounce = 0, 
					shape = nil, 
					move = false, 
					moveSpeed = 0, 
					moveDirecton = nil
				},
				{
					type = "line", 
					id = "line1",
					width = display.contentWidth,
					x = display.contentCenterX, 
					y = display.contentHeight - 250, 
					color = nil,
					forceDirection = nil,
					anchorX = .5,
					anchorY = .5,
					rotation = 0, 
					rotationSpeed = 0, 
					bounce = 1.8, 
					shape = nil, 
					move = false, 
					moveSpeed = 0, 
					moveDirecton = nil
				},
				{
					type = "line", 
					id = "line2",
					width = 75,
					x = display.contentCenterX, 
					y = 250, 
					color = nil,
					forceDirection = nil,
					anchorX = .5,
					anchorY = .5,
					rotation = 90, 
					rotationSpeed = 0, 
					bounce = 1.8, 
					shape = nil, 
					move = false, 
					moveSpeed = 0, 
					moveDirecton = nil
				},
				{
					type = "line", 
					id = "line3",
					width = 200,
					x = 150, 
					y = 550, 
					color = nil,
					forceDirection = nil,
					anchorX = .5,
					anchorY = .5,
					rotation = -1, 
					rotationSpeed = 1,
					rotationStep = 3, 
					bounce = 1.8, 
					shape = nil, 
					move = false, 
					moveSpeed = 0, 
					moveDirecton = nil
				},
			}
		},
	},
}
return data