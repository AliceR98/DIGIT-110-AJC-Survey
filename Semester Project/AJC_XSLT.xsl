<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Anna Julia Cooper Survey Answers</title>
                <link rel="stylesheet" type="text/css" href="style.css"/>
            </head>
            <body>
                <h1><xsl:apply-templates select="descendant::title[@type='main']"/></h1>
                <h1><i><xsl:apply-templates select="descendant::title[@type='sub']"/></i></h1>
                <xsl:apply-templates select="descendant::div1"/>       
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="div1">
        <section id="S{count(preceding-sibling::div1) + 1}">
            <h3><xsl:apply-templates select="descendant::head[1]"/></h3>
            <xsl:apply-templates select="descendant::div2"/>
        </section>
    </xsl:template>
    
    <xsl:template match="div2">
        <xsl:choose>
            <xsl:when test="ab">
                <p><xsl:apply-templates/></p>
            </xsl:when>
            <xsl:when test="table">
                <xsl:apply-templates select="table"/>
            </xsl:when>
            <xsl:when test="list">
                <xsl:apply-templates select="list"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates/>
            </xsl:otherwise>
        </xsl:choose>
        <br/>
    </xsl:template>
    <xsl:template match="table">
        <table>
            <tr>
                <xsl:for-each select="row[@role='label']/cell">
                    <th><xsl:value-of select="."/></th>
                </xsl:for-each>
            </tr>
            <xsl:for-each select="row[@n]">
                <tr>
                    <xsl:for-each select="cell">
                        <td><xsl:value-of select="."/></td>
                    </xsl:for-each>
                </tr>     
            </xsl:for-each>             
        </table>
    </xsl:template>
    
    <xsl:template match="list">
        <p><xsl:apply-templates select="descendant::head"/></p>
        <ol type="a">
            <xsl:for-each select="item">    
                <li><xsl:apply-templates/></li>
            </xsl:for-each>
        </ol>
    </xsl:template>
    
    <xsl:template match="add[@hand]">
        <ins class="hand"><xsl:apply-templates/></ins>
    </xsl:template>
    
    <xsl:template match="metamark">
        <xsl:choose>
            <xsl:when test="@function='checkmark'">
                <span class="meta">&#10003; </span>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="space">
        <span class="blank">&#160; </span>
    </xsl:template>
    
    <xsl:template match="del[@rend='strikethrough']"
        ><del><xsl:apply-templates/></del>  
    </xsl:template>

</xsl:stylesheet>