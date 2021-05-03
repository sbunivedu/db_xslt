# XSLT

XSL (eXtensible Stylesheet Language) is a styling language for XML. XSLT stands for XSL Transformations.

The case study demonstrates how to use XSLT to transform XML documents to HTML or a different XML structure.

You can use https://www.freeformatter.com/xsl-transformer.html to test the solutions.

## Movie Data

`list_movies2.xslt` extracts a list of movie names from `movies.xml`:
```html
  King Kong
  Footloose
```

`list_movies.xslt` uses the `xsl:for-each` tag to put the movie names as `h1` headings in a HTML file.
```html
<html>
   <head>
      <title>Movies</title>
   </head>
   <body>
      <h1>King Kong</h1>
      <h1>Footloose</h1>
   </body>
</html>
```

`movie_stars.xslt` transforms `movies.xml` to the following format.

```xml
<Movies>
  <Movie title="King Kong">
    <Star name="Fay Wray"/>
    <Star name="Jeff Bridges"/>
    <Star name="Jessica Lange"/>
  </Movie>
  <Movie title="Footloose">
    <Star name="Kevin Bacon"/>
    <Star name="John Lithgow"/>
    <Star name="Sarah Jessica Parker"/>
    <Star name="Carrie Fisher"/>
  </Movie>
</Movies>
```

`movie_stars2.xslt` transforms `movies.xml` to the following format using the `xsl:apply-templates` tag recursively.

```xml
<Movies>
  <Movie title="King Kong">
    <Star name="Fay Wray"/>
    <Star name="Jeff Bridges"/>
    <Star name="Jessica Lange"/>
  </Movie>
  <Movie title="Footloose">
    <Star name="Kevin Bacon"/>
    <Star name="John Lithgow"/>
    <Star name="Sarah Jessica Parker"/>
    <Star name="Carrie Fisher"/>
  </Movie>
</Movies>
```

`list_stars.xslt` transforms stars and addresses from `stars.xml` into HTML lists.
```html
<ol>
   <li>Carrie Fisher</li>
   <li>First Last</li>
</ol>
<ol>
   <li>Hollywood</li>
   <li>Malibu</li>
   <li>Los Angeles</li>
</ol>
```

`test_address.xslt` uses `xsl:if` tag to output only addresses in "Hollywood".
```html
<table border="S">
   <tr>
      <th>Stars</th>
   </tr>
   <tr>
      <td>Carrie Fisher</td>
   </tr>
</table>
```

# Product Data
Write XSLT stylesheets to produce each of the following documents using `products.xml`.
An HTML file consisting of a header "Manufacturers" followed by an enumerated list of the names of all the makers of products listed in the input.

expected output:
```html
<html>
  <head>
    <title>Manufacturers</title>
  </head>
  <body>
    <ol>
      <li>A</li>
      <li>E</li>
      <li>H</li>
    </ol>
  </body>
</html>
```

An HTML file consisting of a table with headers "Model" and "Price," with a row for each PC. That row should have the proper model and price for the PC.

expected output:
```html

<html>
  <head>
    <title>PCs</title>
  </head>
  <body>
    <table>
      <tr>
        <th>Model</th>
        <th>Price</th>
      </tr>
      <tr>
        <td>1001</td>
        <td>2114</td>
      </tr>
      <tr>
        <td>1002</td>
        <td>995</td>
      </tr>
      <tr>
        <td>1011</td>
        <td>959</td>
      </tr>
      <tr>
        <td>1012</td>
        <td>649</td>
      </tr>
    </table>
  </body>
</html>
```

An HTML file consisting of a table whose headers are "Model," "Price," "Speed," and "Ram" for all Laptops, followed by another table with the same headers for PC's.

expected output:
```html
<html>
  <head>
    <title>Products</title>
  </head>
  <body>
    <table>
      <tr>
        <th>Model</th>
        <th>Price</th>
        <th>Speed</th>
        <th>Ram</th>
      </tr>
      <tr>
        <td>1001</td>
        <td>2114</td>
        <td>2.66</td>
        <td>1024</td>
      </tr>
      <tr>
        <td>1002</td>
        <td>995</td>
        <td>2.10</td>
        <td>512</td>
      </tr>
      <tr>
        <td>1011</td>
        <td>959</td>
        <td>1.86</td>
        <td>2048</td>
      </tr>
      <tr>
        <td>1012</td>
        <td>649</td>
        <td>2.80</td>
        <td>1024</td>
      </tr>
    </table>
    <table>
      <tr>
        <th>Model</th>
        <th>Price</th>
        <th>Speed</th>
        <th>Ram</th>
      </tr>
      <tr>
        <td>2004</td>
        <td>1150</td>
        <td>2.00</td>
        <td>512</td>
      </tr>
      <tr>
        <td>2005</td>
        <td>2500</td>
        <td>2.16</td>
        <td>1024</td>
      </tr>
      <tr>
        <td>2001</td>
        <td>3673</td>
        <td>2.00</td>
        <td>2048</td>
      </tr>
    </table>
  </body>
</html>
```



## References
* https://www.w3schools.com/xml/xsl_intro.asp
* https://www.xml.com/articles/2017/01/01/what-is-xslt/
* https://www.w3schools.com/xml/xsl_client.asp
* https://stackoverflow.com/questions/3828898/can-chrome-be-made-to-perform-an-xsl-transform-on-a-local-file
