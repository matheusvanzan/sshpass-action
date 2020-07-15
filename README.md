# sshpass-action

Github Action to send commands via SSPHPASS


## Usage

```
- uses: matheusvanzan/sshpass-action@master
- with:
    - host: ${{ secrets.SERVER_HOST }}
    - username: ${{ secrets.SERVER_USERNAME }}
    - password: ${{ secrets.SERVER_PASSWORD }}
    - run: |
        # your multiline bash commands
```