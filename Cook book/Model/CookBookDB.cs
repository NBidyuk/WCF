
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;


using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Cook_book.Model
{
    public class CookBookDB
    {

        private SqlConnection _connection;
        public SqlConnection Connection { get { return _connection; } }

        public bool OpenConnection()
        {
            try
            {
                _connection = new SqlConnection(
                   "Server=localhost\\sqlexpress;Database=Cook Book;Integrated Security=true;");
                _connection.Open();

                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        public bool CloseConnection()
        {
            try
            {
                if (_connection != null) _connection.Close();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public List<Product> SelectAllProducts()
        {
            try
            {
                SqlCommand command = new SqlCommand();
                command.Connection = _connection;
                command.CommandText = "SELECT Products.id, Products.name,[category_product].name FROM Products JOIN [Category_product]" +
                    "ON [category_product].id = Products.[category product_id]";
                SqlDataReader reader = command.ExecuteReader();
                List<Product> products = new List<Product>();
                if (!reader.HasRows)
                {
                    MessageBox.Show("The database is empty!");
                    return null;
                }
                else
                {

                    while (reader.Read())
                    {
                        Product product = new Product();
                        product.idProd = Convert.ToInt32(reader["Id"]);
                        product.name = reader.GetString(1);
                        product.category = reader.GetString(2);
                        products.Add(product);
                    }
                    reader.Close();
                    return products;
                }
            }

            catch (Exception e)
            {
                throw e;
            }
        }


        public List<Measurement> SelectAllMeasurements()
        {
            try
            {
                SqlCommand command = new SqlCommand();
                command.Connection = _connection;
                command.CommandText = "SELECT id, name FROM Measurements";
                SqlDataReader reader = command.ExecuteReader();
                List<Measurement> measurements = new List<Measurement>();
                if (!reader.HasRows)
                {
                    MessageBox.Show("The database is empty!");
                    return null;
                }
                else
                {

                    while (reader.Read())
                    {
                        Measurement measurement = new Measurement();
                        measurement.id = reader.GetInt32(0);
                        measurement.Name = Convert.ToString(reader["name"]);

                        measurements.Add(measurement);
                    }
                    reader.Close();
                    return measurements;
                }
            }

            catch (Exception e)
            {
                throw e;
            }
        }


        public List<Category> SelectDishCategories()
        {
            try
            {
                SqlCommand command = new SqlCommand();
                command.Connection = _connection;
                command.CommandText = "SELECT id, name FROM  [Category_dish]";
                SqlDataReader reader = command.ExecuteReader();
                List<Category> categories = new List<Category>();
                if (!reader.HasRows)
                {
                    MessageBox.Show("The database is empty!");
                    return null;
                }
                else
                {

                    while (reader.Read())
                    {
                        Category ctg = new Category();
                        ctg.id = reader.GetInt32(0);
                        ctg.Name = Convert.ToString(reader["name"]);

                        categories.Add(ctg);
                    }
                    reader.Close();
                    return categories;
                }
            }

            catch (Exception e)
            {
                throw e;
            }
        }



        public List<Recipe> SelectAll()
        {
            try
            {
                SqlCommand command = new SqlCommand();
                command.Connection = _connection;
                command.CommandText = "SELECT * FROM Dish";
                SqlDataReader reader = command.ExecuteReader();
                List<Recipe> recipes = new List<Recipe>();
                if (!reader.HasRows)
                {
                    MessageBox.Show("The database is empty!");
                    return null;
                }
                else
                {

                    while (reader.Read())
                    {
                        Recipe recipe = new Recipe();
                        recipe.id = Convert.ToInt32(reader["Id"]);
                        recipe.name = reader["name"].ToString();
                        recipe.imagePath = reader["image_path"].ToString();
                        recipe.content = reader["content"].ToString();
                        recipes.Add(recipe);
                    }
                    reader.Close();

                }

                foreach (Recipe res in recipes)
                {
                    SqlCommand command2 = new SqlCommand();
                    command2.Connection = _connection;
                    command2.CommandText = "SELECT Products.id, Products.name, Dish_Product.quantity, Measurements.name AS measurement FROM [Dish_Product]" +
                        " JOIN Products ON products.id =[Dish_Product].product_id JOIN Measurements ON Measurements.id = Dish_Product.measurement_id" +
                        "WHERE dish_id = @idDish";
                    command2.Parameters.AddWithValue("idDish", res.id);
                    SqlDataReader reader2 = command.ExecuteReader();
                    res.ingredients = new List<Ingredient>();

                    if (!reader2.HasRows)
                    {
                        MessageBox.Show("The database is empty!");
                        return null;
                    }
                    else
                    {

                        while (reader2.Read())
                        {
                            Ingredient ingredient = new Ingredient();
                            ingredient.measurement = new Measurement();
                            ingredient.id = reader2.GetInt32(0);
                            ingredient.name = reader2.GetString(1);//["name"].ToString();
                            ingredient.quantity = reader2.GetInt32(2); //Convert.ToInt32(reader2["quantity"]);
                            ingredient.measurement.name = reader2.GetString(3); //reader2["measurement"].ToString();
                            res.ingredients.Add(ingredient);
                        }
                        reader2.Close();
                    }
                }
                return recipes;

            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public int AddRecipe(Recipe recipe)
        {
            try
            {
                SqlCommand command = new SqlCommand();
                command.Connection = _connection;
                command.CommandText = "INSERT INTO Dish (name, category_id, content, image_path)" +
                                      "VALUES (@name, @category_id, @content, @image_path)";
                command.Parameters.AddWithValue("name", recipe.Name);
                command.Parameters.AddWithValue("image_path", recipe.ImagePath);
                command.Parameters.AddWithValue("category_id", recipe.Category.id);
                command.Parameters.AddWithValue("content", recipe.Content);
                int res = command.ExecuteNonQuery();
                return res;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public int AddIngredients(Recipe recipe)
        {
            try
            {

                int res = 0;
                foreach (var ing in recipe.ingredients)
                {
                    SqlCommand command = new SqlCommand();
                    command.Connection = _connection;
                    command.CommandText = "INSERT INTO Dish_Product (dish_id, product_id, quantity, measurement_id)" +
                                          "VALUES (@dish_id, @product_id, @quantity, @measurement_id)";
                    command.Parameters.AddWithValue("dish_id", recipe.id);
                    command.Parameters.AddWithValue("measurement_id", ing.measurement.id);
                    command.Parameters.AddWithValue("product_id", ing.idProd);
                    command.Parameters.AddWithValue("quantity", ing.Quantity);
                    res += command.ExecuteNonQuery();
                }
                return res;
            }
            catch (Exception e)
            {
                throw e;
            }
        }




        public int DeleteRecipe(string name)
        {
            try
            {
                SqlCommand command = new SqlCommand();
                command.Connection = _connection;
                command.CommandText = "DELETE FROM Dish WHERE name = @name";
                SqlParameter paramId = new SqlParameter("name",name);
                command.Parameters.Add(paramId);
                int res = command.ExecuteNonQuery();
                return res;
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}