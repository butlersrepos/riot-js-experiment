<cactus-watcher>
    <h1>{ description }</h1>
    <button onclick={ touchCactus }>TOUCH THE CACTUS</button>
    
    <script>
        this.descriptionIndex = 0;
        this.descriptions = [
            'Having a great day!',
            'Having a pretty good day...',
            'Having an ok day...',
            'Having a real bad day...'
        ];

        this.description = this.descriptions[this.descriptionIndex];
        
        window.observedCactus.on('prick', () => {
            this.description = 'SON OF A!';
            
            setTimeout(() => {
                let cappedIndex = Math.min(++this.descriptionIndex, this.descriptions.length - 1);
                this.description = this.descriptions[cappedIndex];
                this.update();
            }, 3000);
        });

        touchCactus() {
            window.observedCactus.touch();
        }
    </script>
</cactus-watcher>