# SSHPASS Github Action

Github Action to send commands via SSHPASS


## Usage

```
- name: Run sshpass commands
  uses: matheusvanzan/sshpass-action@master
  with:
    host: ${{ secrets.SERVER_HOST }}
    username: ${{ secrets.SERVER_USERNAME }}
    password: ${{ secrets.SERVER_PASSWORD }}
    run: |
      # your commands here
```