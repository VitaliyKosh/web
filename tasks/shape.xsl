<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html><head><title></title></head>
    <body>
        <xsl:apply-templates/>
    </body>
    </html>
</xsl:template>
<xsl:template match="графика">
    <svg width="{@ширина}" height="{@высота}" version="1.1" xmlns="http://www.w3.org/2000/svg">
        <xsl:apply-templates/>
    </svg>
</xsl:template>
<xsl:template match="эллипс">
    <ellipse id="{@id}" fill="{@заливка}" cx="{@cx}" cy="{@cy}" rx="{@rx}" ry="{@ry}" stroke-width="{@ширина-ободка}" stroke="{@ободок}"/>
</xsl:template>
</xsl:stylesheet>