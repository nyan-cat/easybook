<?xml version="1.0" encoding="utf-8" ?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:php="http://php.net/xsl"
    xmlns:www="https://github.com/nyan-cat/easyweb"
    exclude-result-prefixes="php www">
    <xsl:output omit-xml-declaration="yes" encoding="utf-8" />
    <xsl:template match="/">
        <h1><xsl:value-of select="www:local('about:title')" /></h1>
        <p>
            <xsl:value-of select="www:local('about:description')" />
        </p>
        <p>
            <a href="https://github.com/nyan-cat/easyweb">https://github.com/nyan-cat/easyweb</a>
        </p>
    </xsl:template>
</xsl:stylesheet>