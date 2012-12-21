<?xml version="1.0" encoding="utf-8" ?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:php="http://php.net/xsl"
    xmlns:www="https://github.com/nyan-cat/easyweb"
    exclude-result-prefixes="php www">
    <xsl:template match="/*">
        <xsl:for-each select="message">
            <div class="row">
                <xsl:value-of select="message" />
                <p>
                    <small><xsl:value-of select="author" />, <xsl:value-of select="created" /></small>
                </p>
                <xsl:if test="www:access('message:edit(minutes -> minutes, ip -> ip)')">
                    <p>
                        <a href="#" class="edit dotted" data-edit="edit{id}"><xsl:value-of select="www:local('edit')" /></a><a href="/delete/{id}/" class="button" style="margin-left: 1em;"><xsl:value-of select="www:local('delete')" /></a>
                    </p>
                    <div id="edit{id}" style="display: none;">
                        <form class="form" method="post" action="/edit/" accept-charset="utf-8">
                            <input type="hidden" name="id" value="{id}" />
                            <p>
                                <input name="author" type="text" value="{author}" class="text" />
                            </p>
                            <p>
                                <textarea name="message" rows="4"><xsl:value-of select="message" /></textarea>
                            </p>
                            <p>
                                <input type="submit" value="{www:local('submit')}" class="submit" />
                            </p>
                        </form>
                    </div>
                </xsl:if>
            </div>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>