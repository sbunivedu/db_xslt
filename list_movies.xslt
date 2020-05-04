<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
  <html>
  <head>
    <title>Movies</title>
  </head>
  <body>
    <xsl:for-each select="Movies/Movie">
      <h1><xsl:value-of select="@title"/></h1>
    </xsl:for-each>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
