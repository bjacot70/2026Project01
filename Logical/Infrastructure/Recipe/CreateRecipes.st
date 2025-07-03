
ACTION CreateRecipes: 

	//Call TableConfiguration Variable
	TableConfiguration;
	
	// create default recipes in case they don't exist yet on the target
	// recipes are created by using the the MpRecipeXml instance interface
	
	CASE RecipeCreateStep OF
		IDLE:	
			
			IF MpRecipeXml_0.Active = TRUE AND MpRecipeUI_0.Active = TRUE THEN
				
				// check for load error > triggers the default creation > if no error everything is ready to go
				IF (MpRecipeUIConnect.Recipe.List.Names[0] = '') THEN
					MpRecipeXml_0.Load 			:= FALSE;
					MpRecipeXml_0.ErrorReset 	:= TRUE;
					RecipeCreateStep 			:= CREATE_1;
					
				ELSIF (MpRecipeUIConnect.Recipe.List.Names[0] <> '' AND MpRecipeUI_0.Active = TRUE AND MpRecipeUIConnect.Status = mpRECIPE_UI_STATUS_IDLE) THEN
					MpRecipeUIConnect.Recipe.Load := TRUE;
				END_IF
				
				// reset the load command from the init when recipe was loaded successfully
				IF (MpRecipeUIConnect.Status = mpRECIPE_UI_STATUS_LOAD) AND (MpRecipeUIConnect.Recipe.Load = TRUE) THEN
					MpRecipeUIConnect.Recipe.Load			:= FALSE;
					RecipeCreateStep						:= ALL_DONE;
				END_IF

			END_IF
		
		CREATE_1:	// create the first recipe with default values, file name and a known picture index (Bitmap Group in the HMI) 
			MpRecipeXml_0.ErrorReset 			:= FALSE;
			
			gCoffeeMainLogic.CreateFirstRecipe 	:= TRUE;
			CoffeeIngredients.Milk 				:= 0;
			CoffeeIngredients.Water 			:= 150;
			CoffeeIngredients.Sugar 			:= 0;
			CoffeeIngredients.Coffee 			:= 60;
			MpRecipeXml_0.FileName 				:= ADR('mappRegular.xml');
			MpRecipeXml_0.Save					:= TRUE;
			RecipeCreateStep 					:= DONE_1;
		
		DONE_1:	// when CommandDone GoTo next step
			IF(MpRecipeXml_0.CommandDone) THEN
				RecipeCreateStep 			:= CREATE_2;
				MpRecipeXml_0.Save			:= FALSE;
			END_IF;
		
		CREATE_2:	// create the next recipe with default values, file name and a known picture index (Bitmap Group in the HMI) 
			
			CoffeeIngredients.Milk 				:= 0;
			CoffeeIngredients.Water 			:= 75;
			CoffeeIngredients.Sugar 			:= 0;
			CoffeeIngredients.Coffee 			:= 120;
			MpRecipeXml_0.FileName 				:= ADR('mappEspresso.xml');
			MpRecipeXml_0.Save					:= TRUE;
			RecipeCreateStep 					:= DONE_2;
		
		DONE_2:	// when CommandDone GoTo next step
			IF (MpRecipeXml_0.CommandDone) THEN
				RecipeCreateStep 			:= CREATE_3;
				MpRecipeXml_0.Save			:= FALSE;
			END_IF;
		
		CREATE_3:	// create the next recipe with default values, file name and a known picture index (Bitmap Group in the HMI)
			
			CoffeeIngredients.Milk 				:= 75;
			CoffeeIngredients.Water 			:= 75;
			CoffeeIngredients.Sugar 			:= 20;
			CoffeeIngredients.Coffee 			:= 120;
			MpRecipeXml_0.FileName 				:= ADR('mappCappuccino.xml');
			MpRecipeXml_0.Save					:= TRUE;
			RecipeCreateStep 					:= DONE_3;
		
		DONE_3:	// when CommandDone creating recipes is done
			IF(MpRecipeXml_0.CommandDone) THEN
				RecipeCreateStep 					:= CREATE_4;
				MpRecipeXml_0.Save					:= FALSE;
			END_IF;
		CREATE_4:	// create the next recipe with default values, file name and a known picture index (Bitmap Group in the HMI)
			
			CoffeeIngredients.Milk 				:= 100;
			CoffeeIngredients.Water 			:= 50;
			CoffeeIngredients.Sugar 			:= 0;
			CoffeeIngredients.Coffee 			:= 60;
			MpRecipeXml_0.FileName 				:= ADR('mappMilkCoffee.xml');
			MpRecipeXml_0.Save					:= TRUE;
			RecipeCreateStep 					:= REFRESH;
			
		REFRESH:	// refresh the recipe list to make sure all the recipes are shown
			
			IF(MpRecipeXml_0.CommandDone) THEN
				RecipeCreateStep 					:= LOAD;
				MpRecipeXml_0.Save					:= FALSE;
				MpRecipeUIConnect.Recipe.Refresh 	:= TRUE;
			END_IF;	
		
		LOAD:	// load the first recipe to have a default recipe
			
			IF(MpRecipeUIConnect.Status = mpRECIPE_UI_STATUS_IDLE) AND MpRecipeUIConnect.Recipe.Refresh = FALSE THEN
				MpRecipeUIConnect.Recipe.Load 		:= TRUE;
				RecipeCreateStep 					:= DONE_4;
			END_IF
			
		DONE_4:	// if loading was successful the creation of the recipes is done
		
			IF(MpRecipeUIConnect.Status = mpRECIPE_UI_STATUS_IDLE)THEN
				RecipeCreateStep 					:= ALL_DONE;
				gCoffeeMainLogic.CreateFirstRecipe 	:= FALSE;
				MpRecipeUIConnect.Recipe.Refresh 	:= FALSE;
				MpRecipeUIConnect.Recipe.Load 		:= FALSE;
			END_IF;		
		
	END_CASE;
	
	//Edit Recipe
	IF DialogOpen THEN
		
		EditIngredients.Milk 				:= CoffeeIngredients.Milk;
		EditIngredients.Water 				:= CoffeeIngredients.Water;
		EditIngredients.Sugar 				:= CoffeeIngredients.Sugar;
		EditIngredients.Coffee 				:= CoffeeIngredients.Coffee;
		DialogOpen 							:= FALSE;
	END_IF
	
	IF SaveRecipe THEN
		
		CoffeeIngredients.Milk 				:= EditIngredients.Milk;
		CoffeeIngredients.Water 			:= EditIngredients.Water;
		CoffeeIngredients.Sugar 			:= EditIngredients.Sugar;
		CoffeeIngredients.Coffee 			:= EditIngredients.Coffee;
	END_IF

END_ACTION
