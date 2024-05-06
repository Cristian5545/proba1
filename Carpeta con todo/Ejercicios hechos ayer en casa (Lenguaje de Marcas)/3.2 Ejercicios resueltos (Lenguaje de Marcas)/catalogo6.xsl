<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>Ejemplo de Transformacion</title>
    </head>
    <body>
        <h1>Resultado</h1>
            <ol>
                <xsl:for-each select="catalogo/libro">
                    <li>
                        <xsl:value-of select="title"/>
                        <ol>
                            <xsl:for-each select="autores/autor">
                                <li> <xsl:value-of select="."/> </li>
                            </xsl:for-each> <!--Fin del Bucle de Autores-->
                        </ol>
                    </li>
                </xsl:for-each> <!--Fin del recorrido de Libro-->
            </ol>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>