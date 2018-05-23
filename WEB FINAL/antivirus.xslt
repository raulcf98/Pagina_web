<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
	<html>
		<head>
			<title>XML</title>
			<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
		</head>
		<body>
			<div id="wrapper">
				<div id="logo" class="container">
					<h1><a href="#">Raul Web </a></h1>
				</div>
				<div id="menu-wrapper">
				<div id="menu" class="container">
					<ul>
						<li><a href="index.html">Inicio</a></li>
						<li><a href="contacto.html">Contacto</a></li>
						<li><a href="antivirus.xml">XML</a></li>
					</ul>
				</div>
				</div>
			</div>
			<h2>Los mejores antivirus</h2>
			<table border="1">
				<tbody>
					<tr>
						<th>Nombre</th>
						<th>Descripcion</th>
						<th>Icono</th>
					</tr>
					<xsl:for-each select="catalogo/antivirus">
						<tr>
							<td><xsl:value-of select="nombre"></xsl:value-of></td>
							<td><xsl:value-of select="descripcion"></xsl:value-of></td>
							<td>
								<xsl:element name="img">
									<xsl:attribute name="src">
										<xsl:value-of select="icono"/>
									</xsl:attribute>
								<xsl:attribute name="height">
									100
								</xsl:attribute>
						</xsl:element></td>
						</tr>
					</xsl:for-each>
				</tbody>
			</table>
			<div id="footer">
				<p><a rel="license" href="http://creativecommons.org/licenses/by-nd/4.0/"><img alt="Licencia de Creative Commons" style="border-width:0" src="https://i.creativecommons.org/l/by-nd/4.0/88x31.png" /></a><br />Este obra está bajo una <a rel="license" href="http://creativecommons.org/licenses/by-nd/4.0/">licencia de Creative Commons Reconocimiento-SinObraDerivada 4.0 Internacional</a>. </p>
			</div>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>
