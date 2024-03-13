<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <table border="1">
      <tr bgcolor="#99CCCC">
        <xsl:for-each select="/ROWSET/ROW[1]/*">
          <th><xsl:value-of select="name()"/></th>
        </xsl:for-each>
      </tr>
      <xsl:for-each select="/ROWSET/*">
        <tr>
          <xsl:for-each select="./*">
            <td><xsl:value-of select="text()"/> </td>
          </xsl:for-each>
        </tr>	
      </xsl:for-each>
    </table>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>
