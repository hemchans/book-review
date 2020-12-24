<?php
require_once 'database_utils.php';
require_once 'book.php';

const ASCENDING  = 0;
const DESCENDING = 1;

function GetBookListSortedOnId($sortOrder) {
    $query = 'SELECT * FROM books ORDER BY id';
    return GetBookListFromResults(GetResultsForQuery($query));
}

function GetBookListSortedOnTitle($sortOrder) {
    $query = $sortOrder == ASCENDING ? 
        'SELECT * FROM books ORDER BY title' :
        'SELECT * FROM books ORDER BY title DESC';
    return GetBookListFromResults(GetResultsForQuery($query));
}

function GetBookListSortedOnAuthor($sortOrder) {
    $query = $sortOrder == ASCENDING ? 
        'SELECT * FROM books ORDER BY authors' :
        'SELECT * FROM books ORDER BY authors DESC';
    return GetBookListFromResults(GetResultsForQuery($query));
}

function GetBookListSortedOnRating($sortOrder) {
    $query = $sortOrder == ASCENDING ?
        'SELECT * FROM books ORDER BY rating' :
        'SELECT * FROM books ORDER BY rating DESC';
    return GetBookListFromResults(GetResultsForQuery($query));
}

function GetBookListFromResults($rows) {
    $books = array();
    foreach ($rows as $row) {
        $book = new Book();
        $book->id = $row['id'];
        $book->title = $row['title'];
        $book->authors = $row['authors'];
        $book->rating = Book::$rating_values[$row['rating']];
        $book->description = $row['description'];
        $book->imageLink = $row['image_link'];
        $book->link = $row['link'];

        $books[] = $book;
    }
    
    return $books;
}

?>