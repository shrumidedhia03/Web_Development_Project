<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>Skin Care Routine</h2>

  <table border="1">
    <tr bgcolor="#fb2274">
      <th style="text-align:left">Product Name</th>
      <th style="text-align:left">Quantity</th>
      <th style="text-align:left">When to use</th>
      <th style="text-align:left">Pro Tip</th>
    </tr>
    <xsl:for-each select="skincare/product">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="Quantity"/></td>
      <td><xsl:value-of select="time"/></td>
      <td><xsl:value-of select="protip"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>