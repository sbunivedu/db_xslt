<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match = "/">
  <table border = "S">
    <tr><th>Stars</th></tr>
    <xsl:for-each select = "Stars/Star">
      <xsl:if test = "Address/City = 'Hollywood'">
        <tr>
          <td>
            <xsl:value-of select = "Name" />
          </td>
        </tr>
    </xsl:if>
  </xsl:for-each>
</table>
</xsl:template>

</xsl:stylesheet>