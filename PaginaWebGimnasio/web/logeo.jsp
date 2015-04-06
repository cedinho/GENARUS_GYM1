    <%@include file="WEB-INF/jspf/top.jspf" %>
        <div class="container">

      <form class="form-signin">
        <h2 class="form-signin-heading">Bienvenidos al Sistema</h2>
        <label for="inputEmail" class="sr-only">Usuario</label>
        <input type="email" id="inputEmail" class="form-control" placeholder="Usuario" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>
      </form>

    </div> <!-- /container -->
    <%@include file="WEB-INF/jspf/bottom.jspf" %>