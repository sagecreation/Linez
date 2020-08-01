local data =
{
	{
		{
			data = "background", { file = "backgroundPurple" }
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
				{ type = "circle", x = 400, y = 400 },
			}
		},
		{
			data = "holes", 
			{ 
				{ type = "circle", x = 100, y = display.contentHeight - 200 },
			}
		},
		{
			data = "objects", 
			{ 
				{ 
					type = "gravityHole", 
					id = "gravityReverse",
					width = nil,
					x = display.contentWidth - 100, 
					y = display.contentHeight - 100, 
					anchorX = .5,
					anchorY = .5,
					rotation = 0, 
					rotationSpeed = 10, 
					rotationStep = 5,
					bounce = 0, 
					shape = nil, 
					move = false, 
					moveSpeed = 0, 
					moveDirecton = nil
				},
				{ 
					type = "gravityHole", 
					id = "gravityReverse",
					width = nil,
					x = 100, 
					y = 150, 
					anchorX = .5,
					anchorY = .5,
					rotation = 0, 
					rotationSpeed = 10, 
					rotationStep = 5,
					bounce = 0, 
					shape = nil, 
					move = false, 
					moveSpeed = 0, 
					moveDirecton = nil
				},
				{ 
					type = "gravityHole", 
					id = "gravityReverse",
					width = nil,
					x = 100, 
					y = 500, 
					anchorX = .5,
					anchorY = .5,
					rotation = 0, 
					rotationSpeed = 10, 
					rotationStep = 5,
					bounce = 0, 
					shape = nil, 
					move = false, 
					moveSpeed = 0, 
					moveDirecton = nil
				},
				{ 
					type = "gravityHole", 
					id = "gravityReverse",
					width = nil,
					x = 375, 
					y = 650, 
					anchorX = .5,
					anchorY = .5,
					rotation = 0, 
					rotationSpeed = 10, 
					rotationStep = 5,
					bounce = 0, 
					shape = nil, 
					move = false, 
					moveSpeed = 0, 
					moveDirecton = nil
				},
				{ 
					type = "gravityHole", 
					id = "gravityReverse",
					width = nil,
					x = 550, 
					y = 150, 
					anchorX = .5,
					anchorY = .5,
					rotation = 0, 
					rotationSpeed = 10, 
					rotationStep = 5, 
					bounce = 0, 
					shape = nil, 
					move = false, 
					moveSpeed = 0, 
					moveDirecton = nil
				},
				{ 
					type = "gravityHole", 
					id = "gravityReverse",
					width = nil,
					x = 500, 
					y = 400, 
					anchorX = .5,
					anchorY = .5,
					rotation = 0, 
					rotationSpeed = 10, 
					rotationStep = 5, 
					bounce = 0, 
					shape = nil, 
					move = false, 
					moveSpeed = 0, 
					moveDirecton = nil
				},
				{ 
					type = "line", 
					id = "line",
					width = 450,
					x = display.contentCenterX, 
					y = 400, 
					anchorX = 0,
					anchorY = .5,
					rotation = 90, 
					rotationSpeed = 0, 
					bounce = 0, 
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