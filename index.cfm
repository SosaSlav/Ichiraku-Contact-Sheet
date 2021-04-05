<cfscript>
    users = request.userBean.read();
</cfscript>
<cfoutput>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="./includes/css/styles.css">
        <title>List View</title>
    </head>
    <body>
        <div class="container-fluid">
            <header></header>
            <main>
                <div class="text-right mb-3">
                    <a href="form.cfm" class="btn btn-success">Create User</a>
                </div>
                <cfif users.recordcount>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">##</th>
                                <th scope="col">First Name</th>
                                <th scope="col">Last Name</th>
                                <th scope="col">Email</th>
                                <th scope="col">Phone Number</th>
                                <th scope="col">Updated On</th>
                                <th>&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            <cfloop query="users">
                                <tr>
                                    <th scope="row">1</th>
                                    <td>#firstName#</td>
                                    <td>#lastName#</td>
                                    <td>#email#</td>
                                    <td>#phone#</td>
                                    <td>#dateTimeFormat(updatedOn,"mm/dd/yyyy hh:nn tt")#</td>
                                    <td class="text-right"><a href="form.cfm?id=#id#" class="btn btn-primary btn-dark btn-sm" role="button" aria-pressed="true">EDIT</a></td>
                                </tr>
                            </cfloop>
                        </tbody>
                    </table>
                <cfelse>
                    <div class="alert alert-danger text-center">
                        No records in database
                    </div>
                </cfif>
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