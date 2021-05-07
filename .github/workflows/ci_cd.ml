name: cicd-with-gh-actions

on: [push]

jobs:
    deploy-app: 
        if: github.ref == 'refs/heads/master'
        runs-on: [ubuntu-latest]
        steps: 
            - uses: actions/checkout@v1
            - name: push to server
              uses: appleboy/ssh-action@master
              with:
                host: {{secrets.SERVER_IP}}
                username: {{secrets.SERVER_USERNAME}}
                password: {{secrets.SERVER_PASSWORD}}
                script: cd {{secrets.PROJECR_PATH}} && git pull origin main && pm2 restart {{secrets.APP_NAME}}