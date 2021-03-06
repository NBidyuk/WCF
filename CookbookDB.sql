USE [Cook Book]
GO
/****** Object:  Table [dbo].[Category_product]    Script Date: 11/22/2016 00:32:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](10) NULL,
 CONSTRAINT [PK_Category product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category_product] ON
INSERT [dbo].[Category_product] ([id], [name]) VALUES (1, N'dairy     ')
INSERT [dbo].[Category_product] ([id], [name]) VALUES (2, N'bakery    ')
INSERT [dbo].[Category_product] ([id], [name]) VALUES (3, N'cerials   ')
INSERT [dbo].[Category_product] ([id], [name]) VALUES (4, N'meat      ')
INSERT [dbo].[Category_product] ([id], [name]) VALUES (5, N'vegetable ')
INSERT [dbo].[Category_product] ([id], [name]) VALUES (6, N'fruit     ')
INSERT [dbo].[Category_product] ([id], [name]) VALUES (7, N'spices    ')
INSERT [dbo].[Category_product] ([id], [name]) VALUES (8, N'liquids   ')
INSERT [dbo].[Category_product] ([id], [name]) VALUES (9, N'dressings ')
INSERT [dbo].[Category_product] ([id], [name]) VALUES (10, N'sweets    ')
INSERT [dbo].[Category_product] ([id], [name]) VALUES (11, N'fish      ')
SET IDENTITY_INSERT [dbo].[Category_product] OFF
/****** Object:  Table [dbo].[Category_dish]    Script Date: 11/22/2016 00:32:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_dish](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](50) NULL,
 CONSTRAINT [PK_Category dish] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category_dish] ON
INSERT [dbo].[Category_dish] ([id], [name]) VALUES (1, N'soups                                             ')
INSERT [dbo].[Category_dish] ([id], [name]) VALUES (2, N'main cource                                       ')
INSERT [dbo].[Category_dish] ([id], [name]) VALUES (3, N'desert                                            ')
INSERT [dbo].[Category_dish] ([id], [name]) VALUES (4, N'snack                                             ')
INSERT [dbo].[Category_dish] ([id], [name]) VALUES (5, N'drink                                             ')
INSERT [dbo].[Category_dish] ([id], [name]) VALUES (6, N'canned food                                       ')
INSERT [dbo].[Category_dish] ([id], [name]) VALUES (7, N'salads                                            ')
SET IDENTITY_INSERT [dbo].[Category_dish] OFF
/****** Object:  Table [dbo].[Measurements]    Script Date: 11/22/2016 00:32:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Measurements](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Measurements] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Measurements] ON
INSERT [dbo].[Measurements] ([id], [name]) VALUES (1, N'kg')
INSERT [dbo].[Measurements] ([id], [name]) VALUES (2, N'g')
INSERT [dbo].[Measurements] ([id], [name]) VALUES (3, N'ml')
INSERT [dbo].[Measurements] ([id], [name]) VALUES (4, N'l')
INSERT [dbo].[Measurements] ([id], [name]) VALUES (5, N'pcs')
INSERT [dbo].[Measurements] ([id], [name]) VALUES (6, N'tsp')
INSERT [dbo].[Measurements] ([id], [name]) VALUES (7, N'sp')
INSERT [dbo].[Measurements] ([id], [name]) VALUES (8, N'glass')
INSERT [dbo].[Measurements] ([id], [name]) VALUES (9, N'can')
INSERT [dbo].[Measurements] ([id], [name]) VALUES (10, N'pinch')
SET IDENTITY_INSERT [dbo].[Measurements] OFF
/****** Object:  Table [dbo].[Products]    Script Date: 11/22/2016 00:32:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[category product_id] [int] NULL,
 CONSTRAINT [PK_vegetables] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (1, N'tomato', 5)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (2, N'cucumber', 5)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (3, N'pepper', 5)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (4, N'cabbage', 5)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (5, N'beatroot', 5)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (6, N'onion', 5)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (7, N'garlic', 5)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (8, N'zucchini', 5)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (9, N'potato', 5)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (10, N'pumpkin', 5)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (11, N'carrot', 5)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (12, N'broccoli', 5)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (13, N'cauliflower', 5)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (14, N'milk', 1)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (15, N'curds', 1)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (16, N'cottage cheese', 1)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (17, N'cheese', 1)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (18, N'kefir', 1)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (19, N'cream', 1)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (20, N'sour cream', 1)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (21, N'bread', 2)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (22, N'roll', 2)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (23, N'flour', 3)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (24, N'wheet', 3)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (25, N'rice', 3)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (26, N'buckwheet', 3)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (27, N'oatmeal', 3)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (28, N'beef', 4)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (29, N'pork', 4)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (30, N'chicken', 4)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (31, N'turkey', 4)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (32, N'liver', 4)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (33, N'rabbit', 4)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (34, N'apple', 6)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (35, N'bear', 6)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (36, N'cherry', 6)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (37, N'apricot', 6)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (38, N'peach', 6)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (39, N'plum', 6)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (40, N'banana', 6)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (41, N'orange', 6)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (42, N'grapes', 6)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (43, N'corn', 5)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (44, N'salt', 7)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (45, N'pepper', 7)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (46, N'maionese', 9)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (47, N'origano', 7)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (48, N'vanilla', 7)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (49, N'cinnamon', 7)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (50, N'mint', 7)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (51, N'water', 8)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (52, N'juice', 8)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (53, N'tomato juice', 8)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (54, N'oil', 9)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (55, N'sugar', 10)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (56, N'honey', 10)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (57, N'chocolate', 10)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (58, N'cocoa', 7)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (59, N'green leek', 5)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (60, N'creamy cheese', 1)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (61, N'vinnegar', 9)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (62, N'salted fish', 11)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (63, N'salmon', 11)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (64, N'dill ', 5)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (65, N'parsley', 5)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (66, N'lard', 4)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (67, N'egg white', NULL)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (68, N'egg yolk', NULL)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (69, N'raisins', 7)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (70, N'provance herbs', 7)
INSERT [dbo].[Products] ([id], [name], [category product_id]) VALUES (71, N'eggplant', 5)
SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  Table [dbo].[Dish_Product]    Script Date: 11/22/2016 00:32:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dish_Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dish_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NULL,
	[measurement_id] [int] NULL,
 CONSTRAINT [PK_Dish_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dish_Product] ON
INSERT [dbo].[Dish_Product] ([id], [dish_id], [product_id], [quantity], [measurement_id]) VALUES (1, 1, 34, 7, 5)
INSERT [dbo].[Dish_Product] ([id], [dish_id], [product_id], [quantity], [measurement_id]) VALUES (2, 1, 15, 200, 2)
INSERT [dbo].[Dish_Product] ([id], [dish_id], [product_id], [quantity], [measurement_id]) VALUES (3, 1, 55, 2, 7)
INSERT [dbo].[Dish_Product] ([id], [dish_id], [product_id], [quantity], [measurement_id]) VALUES (4, 1, 68, 1, 5)
INSERT [dbo].[Dish_Product] ([id], [dish_id], [product_id], [quantity], [measurement_id]) VALUES (5, 1, 19, 60, 2)
INSERT [dbo].[Dish_Product] ([id], [dish_id], [product_id], [quantity], [measurement_id]) VALUES (6, 1, 69, 1, 7)
INSERT [dbo].[Dish_Product] ([id], [dish_id], [product_id], [quantity], [measurement_id]) VALUES (7, 20, 29, 1, 1)
INSERT [dbo].[Dish_Product] ([id], [dish_id], [product_id], [quantity], [measurement_id]) VALUES (8, 20, 7, 2, 5)
INSERT [dbo].[Dish_Product] ([id], [dish_id], [product_id], [quantity], [measurement_id]) VALUES (9, 20, 70, NULL, NULL)
INSERT [dbo].[Dish_Product] ([id], [dish_id], [product_id], [quantity], [measurement_id]) VALUES (10, 20, 44, NULL, NULL)
INSERT [dbo].[Dish_Product] ([id], [dish_id], [product_id], [quantity], [measurement_id]) VALUES (11, 20, 45, NULL, NULL)
INSERT [dbo].[Dish_Product] ([id], [dish_id], [product_id], [quantity], [measurement_id]) VALUES (12, 21, 71, 1, 1)
INSERT [dbo].[Dish_Product] ([id], [dish_id], [product_id], [quantity], [measurement_id]) VALUES (13, 21, 44, NULL, NULL)
INSERT [dbo].[Dish_Product] ([id], [dish_id], [product_id], [quantity], [measurement_id]) VALUES (14, 21, 54, 4, 7)
INSERT [dbo].[Dish_Product] ([id], [dish_id], [product_id], [quantity], [measurement_id]) VALUES (15, 21, 61, 4, 7)
INSERT [dbo].[Dish_Product] ([id], [dish_id], [product_id], [quantity], [measurement_id]) VALUES (16, 21, 51, 8, 7)
INSERT [dbo].[Dish_Product] ([id], [dish_id], [product_id], [quantity], [measurement_id]) VALUES (17, 21, 7, 2, 5)
INSERT [dbo].[Dish_Product] ([id], [dish_id], [product_id], [quantity], [measurement_id]) VALUES (18, 21, 5, NULL, NULL)
INSERT [dbo].[Dish_Product] ([id], [dish_id], [product_id], [quantity], [measurement_id]) VALUES (19, 0, 0, 500, 3)
SET IDENTITY_INSERT [dbo].[Dish_Product] OFF
/****** Object:  Table [dbo].[Dish]    Script Date: 11/22/2016 00:32:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dish](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](50) NOT NULL,
	[category_id] [int] NULL,
	[content] [nvarchar](max) NULL,
	[image_path] [nvarchar](max) NULL,
 CONSTRAINT [PK_Recipe] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dish] ON
INSERT [dbo].[Dish] ([id], [name], [category_id], [content], [image_path]) VALUES (1, N'Печеные яблоки с творогом                         ', 3, N'Это самый полезный десерт для детей и взрослых. В нем привлекательно все: и простота приготовления, и неповторимый аромат и вкус, знакомые с детства, и без сомнения, польза для здоровья.\nТворог протираем через сито. Добавляем желток, сахар, сливки. Все тщательно перемешиваем. Изюм заливаем кипятком на пару минут, просушиваем бумажным полотенцем, выкладываем к творожной массе, перемешиваем. Это наша начинка для яблок. Яблоки промываем водой. Срезаем верхнюю часть (~ 1/3) - это наша крышечка. Осторожно вырезаем середину у оставшегося яблока при помощи ножа и ложки. Чтобы яблоки не потемнели, помещаем их в подкисленный раствор. Для этого в глубокую миску наливаем 1 л воды, в которой растворяем 3 г лимонной кислоты. Готовые яблоки выкладываем в форму для запекания. Наполняем нашей начинкой. Накрываем яблочными крышечками. Запекаем в духовке при 180 градусах 20-25 минут. Вынимаем из духовки, перекладываем на тарелку, даем остыть. Подаем печеные яблоки с медом, джемом или сметаной. Печеные яблоки с творогом готовы!!!', N'/Resources/1.jpg')
INSERT [dbo].[Dish] ([id], [name], [category_id], [content], [image_path]) VALUES (2, N'Баклажаны в заливке                               ', 2, N'Баклажаны нарезаем кружочками толщиной 0,7 мм. Солим, перемешиваем. Даем постоять приблизительно 1 час, чтобы ушла горечь. Сливаем с баклажан образовавшуюся жидкость. Смазываем противень растительным маслом. Каждый кружочек баклажана с двух сторон окунаем в растительное масло. Баклажаны выкладываем на противень. Запекаем в духовке при температуре 180 градусов около 30 минут. Вынимаем из духовки, даем остыть. Пока остывают баклажаны, делаем заливку. Для этого смешиваем растительное масло, уксус, воду. В смесь добавляем укроп и чеснок, выдавленный через чесночницу. Каждый кружочек баклажана окунаем в заливку и складываем в подходящую посуду. Оставшуюся заливку выливаем сверху на баклажаны. Ставим в холодильник. Получилась отличная закуска.', N'/Resources/3.jpg')
INSERT [dbo].[Dish] ([id], [name], [category_id], [content], [image_path]) VALUES (4, N'Закусочные оладьи с семгой                        ', 4, N'Просеянную муку смешиваем с разрыхлителем, солью, зеленым луком. В другой миске соединяем творожный крем-сыр и сливочное масло, взбивая венчиком. Эти 2 ингредиента должны быть комнатной температуры. Затем добавляем яйцо, продолжая взбивать венчиком. Далее вливаем молоко, перемешиваем. Соединяем яично-молочную смесь с мучной. Тщательно взбиваем венчиком до полного исчезновения комочков. Жарим оладьи на среднем огне в небольшом количестве растительного масла (на 1 порцию оладий ~1/2 ст. л. растительного масла) сначала с одной стороны. Затем – с другой. Выкладываем готовые оладьи на бумажное полотенце для удаления лишнего жира. Оладьи готовы. Готовим соус. Смешиваем сметану с хреном, солим соус по вкусу. Семгу нарезаем тонкими пластинами. На каждый оладий кладем примерно 1 ч. л. соуса, а сверху – семгу. Оладьи с семгой посыпаем мелко нарезанной зеленью укропа и петрушки. Закусочные оладьи с семгой готовы!!!', N'/Resources/5.jpg')
INSERT [dbo].[Dish] ([id], [name], [category_id], [content], [image_path]) VALUES (15, N'Закусочные томатные блинчики с печенью трески     ', 4, N'В миску разбиваем яйцо, добавляем соль, сахар, взбиваем венчиком. Наливаем томатный сок (если сок соленый, необходимо уменьшить количество соли в рецепте), взбиваем венчиком. Порциями добавляем просеянную через сито муку. Взбиваем венчиком до полного растворения мучных комочков. Далее порциями наливаем молоко. Тщательно вымешиваем блинное тесто, добавляем растительное масло, перемешиваем. Разогреваем сковородку, смазываем салом или растительным маслом (один раз). Жарим блины с двух сторон. Это наши блины. Готовим начинку. Выкладываем печень трески вместе с маслом в миску, разминаем вилкой. Сыр натираем на мелкой терке, выкладываем к печени, перемешиваем. Яйцо натираем на мелкой терке, кладем сверху, перемешиваем. Начинку ставим в холодильник на 30 минут и более. Фаршируем блины. Берем блин, сворачиваем его пополам и еще пополам. Отрезаем правый угол, получаем прямоугольный блин. Блин разворачиваем, кладем на тарелку, наносим на поверхность начинку. Сворачиваем блин рулетом. Нарезаем его рулетиками толщиной 1,5 см. Так проделываем с остальными блинами. Рулетики выкладываем на блюдо, ставим в холодильник. Перед подачей к столу посыпаем зеленью укропа (петрушки, зеленым луком). Закусочные томатные блинчики с печенью трески готовы!!!', N'/Resources/6.jpg')
INSERT [dbo].[Dish] ([id], [name], [category_id], [content], [image_path]) VALUES (16, N'Закуска творожная с чесноком                      ', 4, N'В творог добавляем размягченное сливочное масло. Взбиваем блендером. Солим, перчим по вкусу. В творожно - сливочную массу добавляем мелко порезанный укроп. Туда же выдавливаем чеснок через чесночницу. Все тщательно перемешиваем. Выкладываем в посуду. Украшаем петрушкой и укропом. К столу подаем в виде канапушек или бутербродов.', N'/Resources/7.jpg')
INSERT [dbo].[Dish] ([id], [name], [category_id], [content], [image_path]) VALUES (17, N'Закуска из яиц и плавленых сырков                 ', 4, N'Отвариваем перепелиные (куриные) яйца, очищаем от скорлупы. Плавленые сырки, яйца натираем на средне-мелкой терке. Мелко режем зелень укропа и петрушки. Чеснок выдавливаем через чесночницу. Количество чеснока может быть большее. Перемешиваем все ингредиенты. Добавляем майонез, солим, перемешиваем. Выкладываем в салатницу, украшаем зеленью. Эту закуску можно подавать в виде бутербродов. Кроме того, оригинальным способом подачи к столу будет следующий. На лист салата наносим нашу закуску. Сворачиваем рулетом. Нарезаем рулет кусочками шириной около 1 см. Для большей оригинальности наши закусочные рулетики можно выложить на помидоры, нарезанные полукольцами. Закуска из яиц и плавленых сырков готова!!!', N'/Resources/8.jpg')
INSERT [dbo].[Dish] ([id], [name], [category_id], [content], [image_path]) VALUES (18, N'Салат с жареными яйцами                           ', 7, N'Каждое яйцо взбиваем венчиком, слегка солим. Жарим, как блины, с двух сторон. Первый блинчик жарим на небольшом количестве растительного масла, следующие блины - без масла. У нас получается 4-5 яичных блинчика. Каждый блинчик сворачиваем в рулет, нарезаем яичную лапшу. Крабовые палочки и сыр нарезаем соломкой. С сельдерея сливаем жидкость, слегка отжимаем. Зеленый лук нарезаем тоненькими полосками. Не забываем про кукурузу. Все ингредиенты смешиваем. Добавляем майонез, перемешиваем. Салат с жареными яйцами готов!!!', N'/Resources/9.jpg')
INSERT [dbo].[Dish] ([id], [name], [category_id], [content], [image_path]) VALUES (19, N'Салат из пекинской капусты                        ', 7, N'Нарезаем капусту. Соломкой нарезаем отваренное куриное филе, отваренные яйца и огурец. Мелко нарезаем зелёный лук. Смешиваем все ингредиенты. Заправляем майонезом, солим. Сверху посыпаем укропом.', N'/Resources/10.jpg')
INSERT [dbo].[Dish] ([id], [name], [category_id], [content], [image_path]) VALUES (20, N'Грудинка свиная, запеченная в духовке             ', 2, N'Свиную грудинку промываем и обсушиваем. Прокалываем мясо в нескольких местах ножом. В проколы вкладываем чеснок. Грудинку обильно солим солью крупного помола со всех сторон. Посыпем черным молотым перцем со всех сторон. Затем посыпаем прованскими травами тоже со всех сторон. Укладываем подготовленное мясо в форму для запекания. Накрываем форму фольгой. Ставим мясо в духовку, разогретую до 200 градусов на 15 мин. Затем уменьшаем температуру до 150 градусов и готовим 1 час 30 мин. Даем мясу остыть. Делаем вдоль косточек надрезы для их удаления. Грудинку кладем в холодильник. Подаем к столу в виде закуски, нарезанной порционными кусочками.', N'/Resources/2.jpg')
SET IDENTITY_INSERT [dbo].[Dish] OFF
/****** Object:  ForeignKey [FK_Products_Category_product]    Script Date: 11/22/2016 00:32:19 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Category_product] FOREIGN KEY([category product_id])
REFERENCES [dbo].[Category_product] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Category_product]
GO
/****** Object:  ForeignKey [FK_Dish_Product_Measurements]    Script Date: 11/22/2016 00:32:19 ******/
ALTER TABLE [dbo].[Dish_Product]  WITH CHECK ADD  CONSTRAINT [FK_Dish_Product_Measurements] FOREIGN KEY([measurement_id])
REFERENCES [dbo].[Measurements] ([id])
GO
ALTER TABLE [dbo].[Dish_Product] CHECK CONSTRAINT [FK_Dish_Product_Measurements]
GO
/****** Object:  ForeignKey [FK_Dish_Category_dish]    Script Date: 11/22/2016 00:32:19 ******/
ALTER TABLE [dbo].[Dish]  WITH CHECK ADD  CONSTRAINT [FK_Dish_Category_dish] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category_dish] ([id])
GO
ALTER TABLE [dbo].[Dish] CHECK CONSTRAINT [FK_Dish_Category_dish]
GO
