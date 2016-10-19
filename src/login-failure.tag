<login-failure>
    <img src="build/img/themoon.jpg" onclick={ goBack }/>
    <h1>YOU LOSE!</h1>

    goBack() {
        riot.route('/welcome');
    }
    
    <style scoped>
        img {
            top: 0;
            left: 0;
            position: absolute;
            width: 100vw;
            height: 100vh;
        }

        h1 {
            font-family: sans-serif;
            position: absolute;
            top: 25vh;
            left: 33vw;
        }
    </style>
</login-failure>
