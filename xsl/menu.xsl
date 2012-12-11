<?xml version="1.0" encoding="utf-8" ?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:php="http://php.net/xsl"
    xmlns:www="https://github.com/nyan-cat/easyweb"
    exclude-result-prefixes="php www">
    <xsl:output omit-xml-declaration="yes" encoding="utf-8" />
    <xsl:template match="menu">
        <xsl:for-each select="item">
            <a href="{@href}"><xsl:value-of select="www:local(@name)" /></a><xsl:if test="position() != last()"> | </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>