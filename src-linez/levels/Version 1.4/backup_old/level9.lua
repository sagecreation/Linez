local data =
{
	{
		{
			data = "background", { file = "backgroundYellow" }
		},
		{
			data = "tutorial",
			{
				{ x = 200, y = 300, anchorX = .5, anchorY = .5, text = "Lines can be dynamic" },
			}
		},
		{
			data = "levelIndicator", { alpha = .5 }
		},
		{
			data = "shapes",
			{
				{ type = "square", x = display.contentCenterX, y = 100 },
			}
		},
		{
			data = "holes", 
			{ 
				{ type = "square", x = display.contentCenterX, y = 700 },
			}
		},
		{
			data = "objects", 
			{ 
				{
					type = "line", 
					id = "explosivePanel1",
					width = 150,
					x = display.contentCenterX, 
					y = 650, 
					color = "grey",
					forceDirection = "up",
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
					id = "bottom",
					width = 150,
					x = display.contentCenterX, 
					y = 750, 
					color = nil,
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
					id = "left",
					width = 110,
					x = display.contentCenterX - 75, 
					y = 645, 
					color = nil,
					anchorX = 0,
					anchorY = 0,
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
					id = "right",
					width = 110,
					x = display.contentCenterX + 75, 
					y = 645, 
					color = nil,
					anchorX = 0,
					anchorY = 0,
					rotation = 90, 
					rotationSpeed = 0, 
					bounce = 1.8, 
					shape = nil, 
					move = false, 
					moveSpeed = 0, 
					moveDirecton = nil
				},
				{
					type = "square", 
					id = "triggerExplode",
					target = "explosivePanel1",
					width = 40,
					height = 40,
					x = 100, 
					y = 900, 
					color = "grey",
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

			},
		},
	},
}
return data