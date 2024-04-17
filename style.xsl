<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">

<html lang="en">

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
</head>

<body>
    <a name="top"></a>
        <a name="top" />
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-dark">
                <div class="container">
                    <a class="navbar-brand" href="#">
                        <img src="img/logo.svg" alt="" width="80"/>
                    </a>
                    <div class="collapse navbar-collapse" id="collapsibleNavId">
                        <ul class="navbar-nav mx-auto mt-2 mt-lg-0">
                            <li class="nav-item">
                                <a class="nav-link fs-1 text-warning" href="#">KingsLeague</a>
                            </li>
                        </ul>
                        <div class="d-flex my-2 my-lg-0">
                            <div class="text-center mx-3">
                                <a class="btn btn-warning btn-sm " href="#" role="button">Tienda</a>
                            </div>
                        </div>
                    </div>
				</div>	
            </nav>
        </header>
        <main class="bg-dark">
            <section>
                <div class="row p-0 m-0 justify-content-center">
					<xsl:for-each select="kingsleague/equipo">
                   
						<div class="card col-xl-1 col-md-2 col-3 rounded-pill mb-3" style="{gradiente}">
                         <a href="#{@abr}">
                        <img class="card-img-top img-fluid" src="{escudo}" alt="Title" />
                          
                        <div class="card-body">
                            <p class="card-text text-center text-white"><xsl:value-of select="@abr"/></p>
                        </div>
                       </a>
                    </div>
                     
					</xsl:for-each>
					
					
                </div>
            </section>
			<xsl:for-each select="kingsleague/equipo">
            
			<section>
            <div>
			<video autoplay="autoplay" loop="loop"
            class="img-fluid"
                    src="{video}"
                    poster="{poster}" />
			  </div>
                <div class="row p-0 m-0 justify-content-center">
					<a name="{@abr}"/>
                    <div class="col-sm-4 col-12 mt-2 mb-2">
                        <div class="card " style="{gradiente}">
                            <img class="card-img-top"
                                src="{presidente/imagen}"
                                alt="Title" />
                            <div class="card-body text-center text-white">
                                <h4 class="card-title"><xsl:value-of select="presidente/@nombre"/></h4>
                                <p class="card-text">Presidente</p>
                            </div>
                        </div>
                    </div>
                </div>
         
            </section>
            <section>
            <div class="row p-0 m-0 justify-content-center">
             <xsl:for-each select="entrenador">
                 <div class="col-xl-3 col-md-4 col-6 d-flex mb-3">
                    <div style="{../gradiente}">
                        <img class="card-img-top" src="{imagen}" alt="Title" />
                        <div class="card-body">
                            <h4 class="card-title text-white"><xsl:value-of select="@nombre"/></h4>
                            <p class="card-text text-white">entrenador</p>
                        </div>
                        
                    </div>
                </div>
                 </xsl:for-each>
                <xsl:for-each select="./players/player">
                 
                <div class="col-xl-3 col-md-4 col-6 d-flex mb-3">
                    <div class="card position-relative" style="{../../gradiente}">
                        <img class="card-img-top" src="{imagen}" alt="Title" />
                        <div class="card-body">
                            <h4 class="card-title text-white"><xsl:value-of select="@nombre"/></h4>
                            <p class="card-text text-white"><xsl:value-of select="demarcacion"/></p>
                        </div>
                        <div class="position-absolute rounded bg-warning m-2 p-2 top-0 end-0">
                            <p class="p-0 m-0">Media<br/></p>
                            <p class="p-0 m-0"><xsl:value-of select="media"/></p>
                            
                        </div>
                    </div>
                </div>
                </xsl:for-each>
            </div>
            
            </section>
            
            
            </xsl:for-each>
            
        </main>
        <footer style="background-color: #6e757c;">
        <h1 class="bg-azul-o text-center text-warning py-3">&copy; Ezequiel Matilla Tamurejo</h1>
            <a href="#top">
                <i class="fa fa-3x text-warning fa-arrow-circle-o-up position-fixed bottom-0 end-0 m-3"
                    aria-hidden="true"></i>
            </a>
        </footer>
        <!-- Bootstrap JavaScript Libraries -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"></script>
</body>

</html>

</xsl:template>
</xsl:stylesheet>