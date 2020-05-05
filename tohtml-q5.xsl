<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
	<HTML>
    <!-- <style>
                table {table-layout: auto; text-align:left; margin-left: auto; margin-right: auto;}
                td, th {border:1px single silver; padding:5px; width:15%px;}
                p { font-family:Verdana; font-size:10px; color:silver;margin-bottom;0px;}

        </style> -->
    <BODY>    
        <xsl:apply-templates/>
    </BODY>
    </HTML>
  </xsl:template>

  <xsl:template match="name">    
	<H3><xsl:value-of select="."/></H3>
  </xsl:template>

  <xsl:template match="duration">    
	<h3> This course runs for: <xsl:value-of select="."/></h3>
    
  </xsl:template>

   <xsl:template match="unit">

        <table width="100%" border="1" >
            <thead>
            <tr>
                <th>Unit Code</th>
                <th>Unit Name</th>
                <th>Surname</th>
                <th>Othernames</th>
                <th>Email</th>
            </tr>
            </thead>
                <tbody>
                <tr>
                    <td><xsl:value-of select="title/unitcode"/></td>
                    <td><xsl:value-of select="title/unitname"/></td>
                    <td><xsl:value-of select="lecturer/surname"/></td>
                    <td><xsl:value-of select="lecturer/othernames"/></td>
                    <td><xsl:value-of select="lecturer/email"/></td>
                </tr>
                </tbody>
            </table>
    </xsl:template>

  <xsl:template match="text()|@*">    
	<!-- Do nothing -->
  </xsl:template>

</xsl:stylesheet>
