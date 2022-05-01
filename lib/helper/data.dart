import '../models/categoryModel.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> myCategories = [];
  CategoryModel categoryModel;

  //1
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "General";
  categoryModel.imageURL = "assets/images/general.jpg";
  myCategories.add(categoryModel);

  //2
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "COVID-19";
  categoryModel.imageURL = "assets/images/covid19.jpg";
  myCategories.add(categoryModel);
  //3
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Business";
  categoryModel.imageURL = "assets/images/business.jpg";
  myCategories.add(categoryModel);

  //4

  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Entertainment";
  categoryModel.imageURL = "assets/images/entertainment.jpg";
  myCategories.add(categoryModel);

  //5

  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Technology";
  categoryModel.imageURL = "assets/images/tech.jpg";
  myCategories.add(categoryModel);
  return myCategories;
}
