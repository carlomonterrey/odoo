<?xml version = '1.0' encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template name="first_page_graphics_report"/>
	<xsl:template name="other_pages_graphics_report"/>
<!--	
	<xsl:template name="first_page_graphics_corporation"/>
	<xsl:template name="other_pages_graphics_corporation"/>
	
	<xsl:template name="first_page_frames"/>
	<xsl:template name="other_pages_frames"/>
-->
	<xsl:template name="rml">
		<document>
			<template author="Generated by OpenERP, Fabien Pinckaers">
				<xsl:attribute name="pageSize">
					<xsl:value-of select="$pageSize"/>
				</xsl:attribute>

				<xsl:attribute name="leftMargin">
					<xsl:value-of select="$leftMargin"/>
				</xsl:attribute>

				<xsl:attribute name="rightMargin">
					<xsl:value-of select="$rightMargin"/>
				</xsl:attribute>
				
				<xsl:attribute name="topMargin">
					<xsl:value-of select="$topMargin"/>
				</xsl:attribute>
				
				<xsl:attribute name="bottomMargin">
					<xsl:value-of select="$bottomMargin"/>
				</xsl:attribute>

				<xsl:attribute name="title">
					<xsl:value-of select="$title"/>
				</xsl:attribute>
				
				<pageTemplate id="first_page">
					<pageGraphics>
						<xsl:call-template name="first_page_graphics_corporation"/>
						<xsl:call-template name="first_page_graphics_report"/>
					</pageGraphics>

					<xsl:call-template name="first_page_frames"/>
				</pageTemplate>

				<pageTemplate id="other_pages">
					<pageGraphics>
						<xsl:call-template name="other_pages_graphics_corporation"/>
						<xsl:call-template name="other_pages_graphics_report"/>
					</pageGraphics>
					
					<xsl:call-template name="other_pages_frames"/>
				</pageTemplate>
			</template>

		<stylesheet>
			<xsl:call-template name="stylesheet"/>
		</stylesheet>

		<story>
			<xsl:call-template name="story"/>
		</story>

		</document>
	</xsl:template>
</xsl:stylesheet>
