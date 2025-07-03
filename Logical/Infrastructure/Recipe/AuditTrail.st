
ACTION AuditTrail: 

	//Load new recipe set recipe parameters
	IF MpRecipeUIConnect.Recipe.List.SelectedIndex <> _SelectedIndex AND MpRecipeUIConnect.Recipe.List.Names[0] <> '' AND MpRecipeUI_0.Active = TRUE AND MpRecipeUIConnect.Status = mpRECIPE_UI_STATUS_IDLE AND MpRecipeUIConnect.Recipe.Load = FALSE THEN
		_SelectedIndex := MpRecipeUIConnect.Recipe.List.SelectedIndex;
		MpRecipeUIConnect.Recipe.Load := TRUE;	
	END_IF

	gCoffeeMainLogic.Refill[0] := CoffeeIngredients.Coffee ;
	gCoffeeMainLogic.Refill[1] := CoffeeIngredients.Milk ;
	gCoffeeMainLogic.Refill[2] := CoffeeIngredients.Sugar ;
	gCoffeeMainLogic.Refill[3] := CoffeeIngredients.Water ;

END_ACTION
