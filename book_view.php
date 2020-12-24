<?php
function GetBookView($book) {
    $body = <<< _END
            <table class="master">
               <tr>
                   <td>
                      <a href="$book->link">
                        <img class="book" img alt="$book->title" src="$book->imageLink">
                       </a>
                   </td>
                   <td>
                       <table class="master">
                          <tr><p class="title">$book->title</p></tr>
                          <tr>
                              <table class="master">
                                  <tr>
                                      <td>
                                          <p class="authors">Author(s): $book->authors</p>
                                      </td>
                                      <td>
                                          <p class="authors">Rating: $book->rating</p>
                                      </td>
                                  </tr>
                              </table>
                          </tr>
                       </table>
                   </td>
               </tr>
               <tr>
                   <td>
                       <p class="text">
                           $book->description
                        </p>
                   </td>
               </tr>
            </table>
        _END;
    return $body;
}
?>