<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match = "/">
  <ol>
    <xsl:for-each select = "Stars/Star">
      <li>
        <xsl:value-of select = "Name" />
      </li>
    </xsl:for-each>
  </ol>
  <ol>
    <xsl:for-each select = "Stars/Star/Address">
      <li>
        <xsl:value-of select = "City" />
      </li>
    </xsl:for-each>
  </ol>
</xsl:template>

</xsl:stylesheet>