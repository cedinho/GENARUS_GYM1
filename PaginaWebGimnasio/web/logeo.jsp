    <%@include file="WEB-INF/jspf/top.jspf" %>
        <div class="container" >
          <div class="row">
            <div class="col-xs-12">
      <form class="col-sm-offset-4 form-signin well" id="sha">
        <h2 class="form-signin-heading">Bienvenidos al Sistema</h2>
        <label for="inputUsuario" class="sr-only">Usuario</label>
        <input type="Usuario" id="inputUsuario" class="form-control" placeholder="Usuario" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <a href=""><button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button></a>
      </form>
      </div>
      </div>

    </div> <!-- /container -->
    <%@include file="WEB-INF/jspf/bottom.jspf" %>