<login-prompt>
    <h1>{ name }</h1>
    <button class="login" onclick={ onLogin }>
        Login
    </button>
    <img src="build/img/login.png" />

    <script>
        this.name = 'Login Prompt';
        onLogin() {
            console.log("WE'RE DOING IT!");
        }
    </script>

    <style scoped>
        button {
            text-transform: uppercase;
        }

        <!-- this won't bleed into solo-dolo's scope -->
        img {
            height: 75px;
            width: 75px;
        }
    </style>
</login-prompt>
