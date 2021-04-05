<cfscript>
    // default value for create
    param name="url.id" type="numeric" default=0;
    // get my user
    users = request.userBean.read( id: url.id );
</cfscript>
<cfoutput>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="./includes/css/styles.css">
        <title>Form View</title>
    </head>
    <body>
        <div class="container-fluid">
            <header></header>
            <main class="text-center w-50 m-auto">
                <h1>Welcome</h1>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Ducimus aliquam nulla saepe praesentium repellendus. Quod veniam ipsum optio, modi culpa
                </p>
                <form name="contact-form" action="./actions.cfm" method="post" id="contact-form" class="text-center p-4">
                    <input type="hidden" name="id" value="#val(users.id)#" />
                    <p>
                        <strong>Reservation List</strong>
                    </p>
                    <div class="form-group">
                        <input type="text" class="form-control" name="firstName" value="#users.firstName#" placeholder="First Name" required>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="lastName" value="#users.lastName#" placeholder="Last Name" required>
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control" name="email" value="#users.email#" placeholder="Email Address" required>
                    </div>
                    <div class="form-group">
                        <input type="tel" class="form-control" name="phone" value="#users.phone#" placeholder="Telephone Number" pattern="[0-9]{3}\-[0-9]{3}\-[0-9]{4}" maxlength="12" title="Ten digits code" required/>
                    </div>
                    <div class="form-group m-0">
                        <cfif users.recordcount>
                            <button type="submit" class="btn btn-dark" name="process" id="submit_form" value="update">
                                UPDATE
                            </button>
                            <button type="submit" class="btn btn-danger" name="process" id="submit_form" value="delete">
                                DELETE
                            </button>
                        <cfelse>
                            <button type="submit" class="btn btn-dark" name="process" id="submit_form">
                                CREATE
                            </button>
                        </cfif>
                    </div>
                </form>
                <div class="response_msg"></div>
            </main>
        </div>
        <footer class="fixed-bottom navbar navbar-dark bg-dark justify-content-center">
            Copyright &copy; 2020 My Website
        </footer>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
        <script src="./includes/js/app.js"></script>
    </body>
</html>
</cfoutput>
