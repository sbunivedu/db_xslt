<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/Movies">
  <Movies>
    <xsl:apply-templates />
  </Movies>
</xsl:template>

<xsl:template match = "Movie">
  <Movie>
    <xsl:attribute name="title">
      <xsl:value-of select = "@title" />
    </xsl:attribute>
    <xsl:apply-templates />
  </Movie>
</xsl:template>

<xsl:template match = "Version">
  <xsl:apply-templates />
</xsl:template>

<xsl:template match = "Star">
  <Star>
    <xsl:attribute name="name">
      <xsl:value-of select = "." />
    </xsl:attribute>
  </Star>
</xsl:template>

</xsl:stylesheet>