   M S B A M L   `   `   `  ����D  @Cook book, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Cook_book.ViewCook_book.View  5   	       Cook_book.View.AddRecipe   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:Cook_book.View     5   	     � Title$  	AddRecipe��5   	   $��543.906��6   $��431.707��6,   .��5	      � .+�5
   
   �� 
�������$��1q�6&   $��	0,0,10,10q�6:   ._�5      �� $��-1,-1,-1,10q�6   
�������.+�5      � $	��154��6   $��Right=�6$   $	��382��6@    J� RenderTransformOrigin$ 
0.49,0.813&�6L    � RowDefinitions 5      �� 5      $��4.276 �6(   $��50��67   �� 5      $��11.724 �6(   �� 5      $��68.528 �6(   �� 5       � ColumnDefinitions 5      �� 5      �� 5      .+�5      �� $��1��6    $��0��6.   $��Name of the dish��6>   $	��Top=�6V   $��16��6n   $��2��6z   $��10,6,0,0q�6�   �� 5      $��0��6    �� DisplayMemberPath$
 name��6U   $��	0,0,10,37q�6�   $��3��6�   ��60   �� *CategoryList+ �� SelectedItem 6n   �� *Recipe.Category+ �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5      $��2��6    $��0��6.   $��Dish category��6>   $��16��6T   $��	10,44,0,9q�6`   �� 5      -   5         ��Name$ DishName��5      $��2��60   $��0��6>   $��
0,14,10,30q�6�   ��6N   �� *Recipe.Name+$ PropertyChanged=�6�   �� 5      -   5         ��Name$ MyImage��5   :   $��1��6   $��1��6*   $��10,10,10,42q�6o   $��3��6�   ��6K   �� *Recipe.ImagePath+6�   �� 5      -   5        	 ��Name$	 AddPic��5      $��Add a picture��6-   $��3��6E   $��1��5       $��21��6-   $	��Top=�6:   $��
58,38,10,0q�6R   ��5   U   �� *AddPicCommand+5    R   5#      �� 5$      $��Ingredients:��6   $��21��60   $��	0,0,298,0q�6<   $��Right=�6O   $��73��6k   � 5%      $	��120��6    5&      �� 5'      $	��138 �6+   �� 5(      �� 5)      $	��138 �6+   .+�5+      �� -   5        
 ��Name$
 Ingredients��5+   .   $��0��6   $	��120��6D   $
 name��5,   F   $��Bottom=�6`   $��	32,0,81,0q�6{   $��2��6�   ��6   �� *IngredientList+6�   �� 5-      -   5         ��Name$ AllIngredients��5-      $
 name��6[   $��
11,0,10,91q�6�   $��2��6�   ��67   �� *ProductList+ �� SelectedValue 6t   �� *Ingredient.name+$ PropertyChanged=� �� Mode$ TwoWay=�6�   �� 5.      $��
  Product:��6    $��1��62   $��16��6B   $	��Top=�6N   $��Center=�6f   $��
62,13,10,0q�6�   $��66��6�   �� 5/      $��  Quantity:��6    $��1��63   $��16��6C   $	��Top=�6O   $��Center=�6g   $��
62,51,10,0q�6�   $��66��6�   �� 50      $��  Measurement:��6    $��1��66   $��16��6F   $	��Top=�6R   $��Center=�6j   $��57,82,132,0q�6�   $��87��6�   $��2��6�   �� 51      -   5        $��QuantityText��51      $��2��62   $��
0,34,10,56q�6�   $��Right=�6�   $	��117��6�   ��6B   �� *Ingredient.Quantity+$ PropertyChanged=�6�   �� 53      -   5        $ MeasurementsText��53      $
 name��6a   $��11,69,10,25q�54   �   $��2��6�   ��53   9   �� *MeasurementList+ 54      �� *Ingredient.Measurement+$ PropertyChanged=�$ TwoWay=�6�   �� 55      -   5        $	 AddIng��55      $��2��6-   $
��Left=�6>   $��20��56      $��New ingredient��6)   $��12(�58      $��
11,100,0,0q�6+   $	��Top=�6?   $	��117��6W   ��56   B   �� *AddIngredientCommand2+��57      �� *
Ingredient+58   W   5:      �� 5;      $��Preparation:��6   $��21��60   $��
43,0,278,0q�6<   �� 5<      $��
32,0,10,10q�6_   $	��126��6s    �� TextWrapping$ WrapWithOverflow=�6�   ��6   �� *Recipe.Content+$ PropertyChanged=�6�   �� 5=      -	   5        $	 AddRec��5=       �� 	IsDefault . $	��Add��6:   $��
186,0,10,0q�6n   ��6I   �� *AddRecipeCommand+6n   5A      5B      5E      5F      