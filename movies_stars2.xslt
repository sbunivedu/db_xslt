<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">
<Movies>
  <xsl:for-each select="Movies/Movie">
    <Movie>
      <xsl:attribute name="title">
        <xsl:value-of select = "@title" />
      </xsl:attribute>
      <xsl:for-each select="Version">
        <xsl:for-each select="Star">
          <Star>
            <xsl:attribute name="name">
              <xsl:value-of select = "." />
            </xsl:attribute>
          </Star>
        </xsl:for-each>
      </xsl:for-each>
    </Movie>
  </xsl:for-each>
</Movies>
</xsl:template>

</xsl:stylesheet>