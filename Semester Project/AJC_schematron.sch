<?xml version="1.0" encoding="UTF-8"?>
<schema queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns="http://purl.oclc.org/dsdl/schematron">
    
    <ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    
    <pattern>
        <rule context="tei:div2[@type='question'][count(preceding::tei:div2[@type='question']) gt 0]">
            <assert test="@n = count(preceding::tei:div2[@type='question']) + 1">
                We have a problem! The counting isn't lining up! 
            </assert>
        </rule>
        
    </pattern>
    
    <pattern>
        <rule context="tei:ab">
            <report test="@hand">
                Do not put hand attribute in the ab. This should go in the TEI add element.
            </report>
        </rule>
        <rule context="tei:div2">
            <report test="tei:p">
                P element not allowed. Replace with ab.
            </report>
            <assert test="@n or @type">
                a div 2 must have n or type attribute or both
            </assert>
        </rule>
        <rule context="tei:metamark">
            <assert test="@rend">
                metamark must have a rend attribute
            </assert>
        </rule>
        <rule context="tei:div1">
            <assert test="@type='section' and @n">
                div1 must have a section and an n attribute
            </assert>
        </rule>
        <rule context="tei:hi">
            <assert test="@rend">
                highlight elements must have a rend function
            </assert>
        </rule>
        <rule context="tei:gap">
            <assert test="@reason">
                all gaps must have a reason attribute
            </assert>
        </rule>
        <rule context="tei:add[@hand]">
            <assert test="@hand='#AJC'">
                all ajc add elements must have a hand attribute, followed by #AJC
            </assert>
        </rule>
    </pattern>
    
</schema>