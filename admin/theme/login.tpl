<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>FPT Jetking - Demo Admin Dashboard</title>
        <link href="<?=ADMIN_THEME_URL?>css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <style>
        label#inputPassword-error {
            margin-left: 74px;
            color:red;
        }
        label#username-error {
            margin-left: 74px;
            color:red;
        }
        </style>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Login Vulnerabilities</h3></div>
                                    <div class="card-body">
                                        <form method="post" autocomplete="off" id="loginForm">
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="username" type="text" name="username" autocomplete="off" readonly onfocus="this.removeAttribute('readonly');" onblur="this.setAttribute('readonly', true);"/>
                                                <label for="username">Username</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputPassword" type="password" name="password" />
                                                <label for="inputPassword">Password</label>
                                            </div>
                                            <?php if($error): ?>
                                            <div class="form-check mb-3">
                                                <label class="form-check-label" for="inputRememberPassword"><?=$error?></label>
                                            </div>
                                            <?php endif; ?>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <p class="small" href="#">(*) Vulnerabilities by LPTech.Asia</p>
                                                <button class="btn btn-primary" type="submit">Login</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Workshop - FPT Jetking</div>
                            <div>
                                Demo Vulnerabilities Website by
                                &middot;
                                <a href="LPTech.Asia">LPTech.Asia</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="<?=ADMIN_THEME_URL?>js/scripts.js"></script>
        <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
        <script src="http://ajax.microsoft.com/ajax/jquery.validate/1.7/additional-methods.js"></script>


        <script>
        jQuery.validator.addMethod("lettersonly", function(value, element) {
            return this.optional(element) || /^[a-z]+$/i.test(value);
        },"Letters only please");
        $(function() {
            $("#loginForm").validate({
                rules: {
                    username: {
                        required: true,
                        lettersonly: true
                    },
                    password: {
                        required: true,
                        minlength: 5
                    }
                },
                messages: {
                    username: {
                        required: "Please provide a password",
                        lettersonly: ""
                    },
                    password: {
                        required: "Please provide a password",
                        minlength: "Your password must be at least 5 characters long"
                    },
                },
                submitHandler: function(form) {
                    form.submit();
                }
            });
        });
        </script>
    </body>
</html>
