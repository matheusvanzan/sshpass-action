# SSHPASS Github Action

Github Action to send commands via SSHPASS


## Usage

Example usage can be found at [sshpass-action-example](https://github.com/matheusvanzan/sshpass-action-example)

```
- name: Run sshpass commands
  uses: matheusvanzan/sshpass-action@v1.1
  with:
    host: ${{ secrets.SERVER_HOST }}
    user: ${{ secrets.SERVER_USER }}
    pass: ${{ secrets.SERVER_PASS }}
    run: |
      # your 
      # commands
      # here
```

Optional ssh port

```
- name: Run sshpass commands
  uses: matheusvanzan/sshpass-action@v1.1
  with:
    host: ${{ secrets.SERVER_HOST }}
    port: 22
    user: ${{ secrets.SERVER_USER }}
    pass: ${{ secrets.SERVER_PASS }}
    run: |
      # your 
      # commands
      # here
```

Optional private key. In this case it will ignore the password if provided.

```
- name: Run sshpass commands
  uses: matheusvanzan/sshpass-action@v1.1
  with:
    host: ${{ secrets.SERVER_HOST }}
    user: ${{ secrets.SERVER_USER }}
    key: ${{ secrets.SERVER_KEY }}
    run: |
      # your 
      # commands
      # here
```

## Changelog

v2
- 'username' and 'password' arguments renamed to 'user' and 'pass'
- accepts optional 'port' argument for the ssh port
- accepts optional 'key' argument for the private key

v1
- initial version