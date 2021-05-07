name: cicd-with-gh-actions

on: [push]

jobs:
    deploy-app: 
        if: github.ref == 'refs/heads/main'
        runs-on: [ubuntu-latest]
        steps: 
            - uses: actions/checkout@v1
            - name: test ssh server connection
              uses: a2m1/slim-ssh-action@master
              with: 
                username: ${{secrets.SERVER_USERNAME}}
                host: ${{secrets.SERVER_HOST}}
                key: ${{secrets.SERVER_KEY}
                script: whoami