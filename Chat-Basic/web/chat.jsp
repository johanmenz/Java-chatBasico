<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>

    <%
    String sala = (String) application.getAttribute("sala");
    String nick = (String) application.getAttribute("nick");
%>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta http-equiv="refresh" content="20" />
            <title>JSP Page</title>
            <!-- Estilo chat -->
            <link rel="stylesheet" href="css/style.css">

            <script type="text/javascript">
                function load() {
                    document.getElementById("msg").focus();
                }
            </script>
        </head>

        <body>
            

            <div id="live-chat">

                <header class="clearfix">

                    <a href="#" class="chat-close" id="chat-close">x</a>

                    <h4>
                        <%=nick%>
                    </h4>

                    <span class="chat-message-counter">3</span>

                </header>

                <div class="chat" id="chat">

                    <div class="chat-history">

                        <div class="chat-message">
                            <div id="sala">
                                <%=sala%>
                            </div>
                        </div>
                        <!-- end chat-message -->
                    </div>
                    <!-- end chat-history -->

                    <form action="Chat" method="post">
                        <fieldset>
                            <input type="text" name="msg" id="msg" placeholder="Escribe tu msm" maxlength="35" autofocus>
                            <input type="hidden">

                        </fieldset>

                    </form>


                </div>
                <!-- end chat -->

            </div>
            <!-- end live-chat -->
            <script src="js/jquery.min.js"></script>
            <!-- Cerrar y guardar el chat -->
            <script>
                (function () {

                    $('#live-chat header').on('click', function () {

                        $('.chat').slideToggle(300, 'swing');
                        $('.chat-message-counter').fadeToggle(300, 'swing');

                    });

                    $('.chat-close').on('click', function (e) {

                        e.preventDefault();
                        $('#live-chat').fadeOut(300);

                    });

                })();
            </script>
        </body>

        </html>