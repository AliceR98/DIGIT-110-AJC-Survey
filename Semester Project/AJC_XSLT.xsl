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
                <link rel="stylesheet" type="text/css" href="webstyle.css"/>
            </head>
            <body>
                <div id="middle"> 
                    <div id="banner">
                        <h1>Anna Julia Cooper</h1>
                        <h2>Responses to the Survey of Negro College Graduates</h2>
                    </div>
                    <hr/>
                    <div id="menu">
                        <a href="index.html">Main</a> <a href="aboutSection.html">About</a>
                        <a href="AJC-output.html">Texts</a><a href="document.html">Original Document</a> <a href="originalCode.html">Source Code</a>
                        <a href="projectInfo.html">Project Information</a>
                    </div>
                    <hr/>
                    
                    <div id="content">
                        <br/>
                        <h1><xsl:apply-templates select="descendant::title[@type='main']"/></h1>
                        <h1><i><xsl:apply-templates select="descendant::title[@type='sub']"/></i></h1><!-- table for orgNames, persNames, and placeNames -->           
                        <section id="table">
                            <br/>
                            <h3>Information about People, Places, and Organizations Mentioned in Survey</h3>
                            <table>
                                <tr>
                                    <th>Question number</th>
                                    <th>People</th>
                                    <th>Organizations</th>
                                    <th>Places</th>
                                </tr>
                                <xsl:apply-templates select="descendant::div2[descendant::persName or descendant::orgName or descendant::placeName]" mode="table"/>
                            </table>
                        </section>
                        <xsl:apply-templates select="descendant::div1"/>
                        
                    </div>   
                    <div id="footer">
                        <p xmlns:dct="http://purl.org/dc/terms/" xmlns:cc="http://creativecommons.org/ns#" class="license-text">This work   is licensed under <a rel="license" href="https://creativecommons.org/licenses/by-nc-sa/4.0">CC BY-NC-SA 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1" /><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1" /><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1" /><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1" /></a></p>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
    
    
    
    <xsl:template match="div1">
        <section id="S{count(preceding-sibling::div1) + 1}">
            <h3><xsl:apply-templates select="descendant::head[1]"/></h3>
            <xsl:apply-templates select="descendant::div2"/>
        </section>
    </xsl:template>
    
    <xsl:template match="div2" mode="table">
        <tr>
            <td><a href="#Q{@n}"><xsl:value-of select="@n"/></a></td>
            <td>
                <xsl:value-of select="ab/add/persName | table/row/cell/add/persName => sort()" separator=", "/>
            </td>
            <td>
                <xsl:value-of select="ab/add/orgName | table/row/cell/add/orgName => sort()" separator=", "/>
            </td>
            <td>
                <xsl:value-of select="ab/add/placeName | table/row/cell/add/placeName => sort()" separator=", "/>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="div2">
        <div id="Q{count(preceding::div2) + 1}">
            <xsl:choose>
                <xsl:when test="ab">
                    <xsl:apply-templates/>   
                </xsl:when>
                <xsl:when test="table">
                    <xsl:apply-templates select="table"/>
                </xsl:when>
                <xsl:when test="list">
                    <div class="list"><xsl:apply-templates select="list"/></div>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates/>
                </xsl:otherwise>
            </xsl:choose> 
            <p class="top"><a href="#table">Back to table &#8593;</a></p>
        </div>     
        <br/>
    </xsl:template>

    <xsl:template match="table">
        <table>
            <tr>
                <xsl:for-each select="row[@role='label']/cell">
                    <th><xsl:apply-templates/></th>
                </xsl:for-each>
            </tr>
            <xsl:for-each select="row[@n]">
                <tr>
                    <xsl:for-each select="cell">
                        <td><xsl:apply-templates/></td>
                    </xsl:for-each>
                </tr>     
            </xsl:for-each>             
        </table>
    </xsl:template>
    
    <xsl:template match="list">
        <xsl:if test="descendant::head">
            <p><xsl:apply-templates select="descendant::head"/></p>
        </xsl:if>
        
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
            <xsl:when test="@rend='checkmark'">
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
    
    <xsl:template match="del">
        <del><xsl:apply-templates/></del>  
    </xsl:template>
    
    <xsl:template match="unclear">
        <span class="unclear"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="gap">
        <span class="gap">
            <xsl:value-of select="@reason"/>
        </span>
    </xsl:template>
    
    <xsl:template match="persName">
        <span class="persName">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="placeName">
        <span class="placeName">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="orgName">
        <span class="orgName">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="hi">
        <xsl:choose>
            <xsl:when test="@rend='italic'">
                <i><xsl:apply-templates/></i>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>