<?php
class Book {
    public static $rating_values = array(
        '&star;&star;&star;&star;&star;',
        '&starf;&star;&star;&star;&star;',
        '&starf;&starf;&star;&star;&star;',
        '&starf;&starf;&starf;&star;&star;',
        '&starf;&starf;&starf;&starf;&star;',
        '&starf;&starf;&starf;&starf;&starf;');
    
    public $id = 0;
    public $title = '';
    public $authors = '';
    public $rating = '';
    public $description ='';
    public $previousQueryParams = '';
    public $nextQueryParams = '';
    public $link = '';
    public $imageLink = '';
}

function GetBook(int $bookId) {
    $query = "SELECT * FROM books WHERE id = ".$bookId;
    $books = GetBookListFromResults(GetResultsForQuery($query));
    return $books[0];
}

?>