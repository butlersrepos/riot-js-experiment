<account-info>
    <header>
        <h1>{ name }'s Account</h1>
        <button onclick={ goBack }>LOGOUT</button>
    </header>
    <hr>
    <ul>
        <li class=transaction-items each={ transactions }>
            <span class=title>{ this.title }</span>
            <span class=amount>${ Number(this.amount).toLocaleString() }</span>
        </li>
    </ul>

    <script>
        let service = this.opts.service;
        
        this.name = service.getName();
        this.transactions = service.getTransactions();

        goBack() {
            riot.route('/welcome');
        }
    </script>

    <style type="scss">
        header {
            display: flex;
            align-items: center;
            justify-content: space-between;

            h1 {
                font-size: 4vw;
                margin: 0;
            }

            button {
                height: 2em;
            }
        }


        .transaction-items {
            display: flex;
            list-style-type: none;
            font-size: 3vw;

            .title {
                width: 60%;
            }

            .amount {
                font-family: monospace, arial;
            }
        }
    </style>
</account-info>
