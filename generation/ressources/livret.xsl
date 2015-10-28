<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" encoding="utf-8" /> 
	<xsl:template match="/">
		<html>
			<head>
				<meta charset="utf-8" />
				<link rel="stylesheet" href="livret.css" />
			</head>
			<body>
				<p>TODO page de garde</p>
				<p>TODO Sommaire</p>				
				<p>TODO Introduction</p>

				
				<h1>TODO Index des jeux</h1>
				<xsl:call-template name="Index-projets-alphabetique"/>

				<xsl:call-template name="Jeux"/>

				<p>TODO Indexes auteurs</p>
				<p>TODO Auteurs</p>
			</body>
		</html>
	</xsl:template>

	<xsl:template name="Index-projets-alphabetique">
		<h2>Liste des jeux par ordre alphabétique</h2>
		<ul>
			<xsl:for-each select="/liste-projets/projet">
				<xsl:sort select="."/>
				<li><a href="#{.}"><xsl:value-of select="."/></a></li>
			</xsl:for-each>
		</ul>
	</xsl:template>

	<xsl:template name="Jeux">
		<h1>Jeux</h1>

		<xsl:for-each select="/liste-projets/projet">
			<xsl:sort select="."/>
			<xsl:apply-templates select="document(concat('projets/', text(), '.xml') )" mode="jeu"/>
		</xsl:for-each>

	</xsl:template>


	<xsl:template match="/" mode="jeu">
		<h2><a name="{/jeu/@nom}"><xsl:value-of select="/jeu/@nom"/></a></h2>
		<h3>TODO Header</h3>
		<xsl:apply-templates select="/jeu/descriptions/jeu"/>
		<h3>TODO Plateformes</h3>
		<h3>TODO Commandes</h3>
		<h3>TODO Règles</h3>
		<h3>TODO Récompenses</h3>
		<h3>TODO Équipe</h3>
		<h3>TODO historique</h3>
		<h3>TODO Sujets de présentations</h3>
		<h3>TODO Technologies</h3>
		<h3>TODO Ressources</h3>
	</xsl:template>

	<xsl:template match="/jeu/descriptions/jeu">
		<h3>Description</h3>
		<p><xsl:value-of select="."/></p>
	</xsl:template>

</xsl:stylesheet>
