<login-prompt>
    <img src="build/img/login.png"></img>
    
    <div>
        <input name=username>
        <label for="username">Username</label>
    </div>
    <div>
        <input name=password type=password>
        <label for="password">Password</label>
    </div>

    <button class="login" onclick={ onLogin }>Login</button>

    <script>
        this.name = 'Login Prompt';
        onLogin() {
            let destination = '/login-failure';

            if( this.validateInputs() ) {
                destination = '/account-info';
            } 

            riot.route(destination);
        }
        
        validateInputs() {
            return this.username.value.length > 0 && this.password.value.length > 0;
        }
    </script>

    <style scoped>
        button {
            text-transform: uppercase;
        }

        img {
            height: 75px;
            width: 75px;
        }
    </style>
</login-prompt>
