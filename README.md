# SSHPASS Github Action

Github Action to send commands via SSHPASS


## Usage

Example usage can be found at [sshpass-action-example](https://github.com/matheusvanzan/sshpass-action-example)

```
- name: Run sshpass commands
  uses: matheusvanzan/sshpass-action@v1.1
  with:
    host: ${{ secrets.SERVER_HOST }}
    username: ${{ secrets.SERVER_USERNAME }}
    password: ${{ secrets.SERVER_PASSWORD }}
    run: |
      # your 
      # commands
      # here
```

Optional arguments


```
- name: Run sshpass commands
  uses: matheusvanzan/sshpass-action@v1.1
  with:
    host: ${{ secrets.SERVER_HOST }}
    port: 22
    username: ${{ secrets.SERVER_USERNAME }}
    password: ${{ secrets.SERVER_PASSWORD }}
    run: |
      # your 
      # commands
      # here
```
