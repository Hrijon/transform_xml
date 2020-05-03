<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
	<html>
    <body>    
      <xsl:apply-templates/>
    </body>
    </html>
  </xsl:template>

  <xsl:template match="name">    
	<h3><xsl:value-of select="."/></h3>
  </xsl:template>

  <xsl:template match="duration">    
	<h3> <xsl:value-of select="."/></h3>
  <p><i>Total number of units are: <b><xsl:value-of select="count(//unit)"/></b></i><br/></p>

  </xsl:template>

  <xsl:template match="unit">   
 
	<p>
      The unit code is: <xsl:value-of select="title/unitcode"/><br/>
      The unit title is: <xsl:value-of select="title/unitname"/> <br/>
       <xsl:value-of select="lecturer/surname"/>, 
        <xsl:value-of select="lecturer/othernames"/> 
        (<xsl:value-of select="lecturer/email"/>) <br/>
    </p>
  </xsl:template>

  <xsl:template match="text()|@*">    
	<!-- Do nothing -->
  </xsl:template>

</xsl:stylesheet>
