<jsp:include page="../comunes/inicioHTML.jsp">
    <jsp:param name="elTitulo" value="DETALLE ALUMNO (tarea)" />
</jsp:include>

<jsp:include page="../comunes/navbar.jsp" />

<section class="container py-3">
    <div class="row">
        <h1 class="h3">Detalle de alumno</h1>
    </div>

    <div class="row align-items-center px-4 mt-3">
        <div class="col-md-5 col-lg-4" >
            <div class="card h-100">
                <jsp:include page="partes/dataCardAlumno.jsp">
                    <jsp:param name="fotoAlumno" value="${alumnoDetalle.foto}" />
                </jsp:include>
            </div>
        </div>
        <div class="col-md-7 col-lg-8" >
            <form id="formAgregarAlumno" action="${pageContext.request.contextPath}/app?accion=update&id=${alumnoDetalle.id}"
                  method="post" class="was-validated border p-4 rounded-3 bg-light">
                <div class="row">
                    <div class="col-sm-12 mb-3 h3">
                        <label for="nombre" class="form-label">Nombre y apellido: <span class="text-primary">${alumnoDetalle.nombre} ${alumnoDetalle.apellido} </span></label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 mb-3 h3">
                        <label for="nombre" class="form-label">Mail: <span class="text-primary">${alumnoDetalle.mail}</span> </label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 mb-3 h3">
                        <label for="nombre" class="form-label">Edad: <span class="text-primary">${alumnoDetalle.edad} años </span></label>
                    </div>
                </div>                    
                 <div class="row">
                    <div class="col-sm-12 mb-3 h3">
                        <label for="nombre" class="form-label">Fecha de nacimiento: <span class="text-primary">${alumnoDetalle.fechaNacimiento} </span></label>
                    </div>                  
                </div>
                 <div class="row">
                    <div class="col-sm-4">
                        <a href="${pageContext.request.contextPath}/app" class="btn btn-secondary w-100">Volver atrás</a>
                    </div>
                    <div class="col-sm-4">
                        <a href="${pageContext.request.contextPath}/app?accion=edit&id=${alumnoDetalle.id}" class="btn bg-warning w-100"><i class="bi bi-pencil"></i></a>
                    </div>
                    <div class="col-sm-4">
                        <a href="${pageContext.request.contextPath}/app?accion=remove&id=${alumnoDetalle.id}" class="btn bg-danger text-light w-100"><i class="bi bi-trash3"></i></a>
                    </div>
                </div>
            </form>
        </div>
    </div>

</section>


<jsp:include page="../comunes/footer.jsp"/>
<jsp:include page="../comunes/finHTML.jsp"/>