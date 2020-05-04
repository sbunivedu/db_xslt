# XSLT

XSL (eXtensible Stylesheet Language) is a styling language for XML. XSLT stands for XSL Transformations.

The case study demonstrates how to use XSLT to transform XML documents to HTML or a different XML structure.

You can use https://www.freeformatter.com/xsl-transformer.html to test the solutions.

`list_movies2.xslt` extracts a list of movie names from `movies.xml`:
```html
  King Kong<br/>
  Footloose<br/>
```

`list_movies2.xslt` uses the `xsl:for-each` tag to put the movie names as `h1` headings in a HTML file.
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

## References
* https://www.w3schools.com/xml/xsl_intro.asp
* https://www.xml.com/articles/2017/01/01/what-is-xslt/
* https://www.w3schools.com/xml/xsl_client.asp
* https://stackoverflow.com/questions/3828898/can-chrome-be-made-to-perform-an-xsl-transform-on-a-local-file
