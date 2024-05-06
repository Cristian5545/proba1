<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/hello-world">
    <html>
        <head>
            <title></title>
        </head>
        <body>
            <h1> <xsl:value-of select="saludo"/> </h1>
            <xsl:apply-templates select="yo"/>
        </body>
    </html>
</xsl:template>

<xsl:template match="yo">
    <div>
        De: <strong> <xsl:value-of select="."/> </strong>
    </div>
</xsl:template>
</xsl:stylesheet>