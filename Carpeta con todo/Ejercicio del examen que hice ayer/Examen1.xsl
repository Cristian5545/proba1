<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>Libros por Autor</title>
    </head>
    <body>
        <h1>Libros de J.J.R. Tolkien</h1>
            <table border='1'>
                <tr>
                    <th>Titulo</th>
                    <th>Genero</th>
                    <th>Precio</th>
                </tr>
                <xsl:for-each select="biblioteca/autores/autor[nombre='J.J.R. Tolkien']/libros/libro"/>
            </table>
        
        <h1>Libros de Gabriel Garcia Marquez</h1>
            <table border='1'>
                <tr>
                    <th>Titulo</th>
                    <th>Genero</th>
                    <th>Precio</th>
                </tr>
                <xsl:for-each select="biblioteca/autores/autor[nombre='Gabriel Garcia Marquez']/libros/libro"/>
            </table>
    </body>
</html>
</xsl:template>

<xsl:template match="libro[genero=('Fantasia', 'Realismo Magico', 'Aventuras')]">
    <tr>
        <td>
            <xsl:value-of select="titulo"/>
        </td>
        <td>
            <xsl:value-of select="genero"/>
        </td>
        <td>
            <xsl:value-of select="precio"/>
        </td>
    </tr>
</xsl:template>
</xsl:stylesheet>