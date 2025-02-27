Map<String, Map<String, dynamic>> libraryBooks = {};

//add book

void addBook({
  required String title,String author = "ali",String year = "1990",String gener = "action",}) {

  libraryBooks[title] = {
    "author": author,
    "year": year,
    "gener": gener
  };

  print("Book added successfully.");
}

//main

void main() {
  addBook(title: "war", author: "ahmad", year: "2005", gener: "drama");
  print(libraryBooks);

  List<dynamic> bookInfo = getBookInfo(title: "war");
  print(bookInfo);
 
}

//get book info

List<dynamic> getBookInfo({
  required String title,String author = "author",String year = "year",String gener = "gener",}) {

  List<dynamic> value = [];

  if (libraryBooks.containsKey(title)) {
    value.add(libraryBooks[title]?["author"]);
    value.add(libraryBooks[title]?["year"]);
    value.add(libraryBooks[title]?["gener"]);
      

  } else {
    print("Book not found.");
  }

  return value;
}

//list all books

// List listAllBooks( gener){

// if (gener){
// if (libraryBooks.containsKey(gener)){
//   List exam =[];
//   exam .add(libraryBooks);
//   return exam[0];
  
// }
// }

// }


//listBooksByGenre

// List <String> listBooksByGenre ({required gener =""}){
//   List exam =[];
//   if (gener=libraryBooks[gener]){
//     exam.add(libraryBooks[title])
//   }



// }

//remove book

void removeBook({required string title}){
  if(libraryBooks.containsKey(title)){
    libraryBooks.remove(title);
    Print("Book removed successfully.");
  }
  else {
    print("Book not found.");
  }

}
