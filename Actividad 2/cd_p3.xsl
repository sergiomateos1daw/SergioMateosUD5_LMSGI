<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1>Biblioteca personal de Sergio Mateos</h1>
        <table border="5">
            <tr bgcolor="gray">
                <th>Título del álbum</th>
                <th>Artista</th>
                <th>Cancion</th>
                <th>Sello discográfico</th>
                <th>Año de publicación</th>
            </tr>
            <xsl:for-each select="cds/cd[sello='Rolling Stones Records']">
                <tr>
                    <td><xsl:value-of select="titulo"/></td>
                    <td><xsl:value-of select="artista"/></td>
                    <td><xsl:value-of select="cancion"/></td>
                    <td><xsl:value-of select="sello"/></td>
                    <td><xsl:value-of select="anyo"/></td>
                </tr>
            </xsl:for-each>   
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>