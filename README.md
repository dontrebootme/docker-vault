# docker-vault

## Testing out the image/version

```
➜  docker run -it --rm dontrebootme/vault:0.1.0 version
Vault v0.1.0-dev (e9b3ad035308f73889dca383c8c423bb5939c4fc+CHANGES)
```

## Running in server dev mode

```
➜  docker run -it --rm --cap-add IPC_LOCK dontrebootme/vault:0.1.0 server -dev
WARNING: Dev mode is enabled!

In this mode, Vault is completely in-memory and unsealed.
Vault is configured to only have a single unseal key. The root
token has already been authenticated with the CLI, so you can
immediately begin using the Vault CLI.

The only step you need to take is to set the following
environment variable since Vault will be taking without TLS:

    export VAULT_ADDR='http://127.0.0.1:8200'

The unseal key and root token are reproduced below in case you
want to seal/unseal the Vault or play with authentication.

Unseal Key: f113447ab21b461f8a7ebcfa25dadcbe49f69f462853ebbf0091522da00a7a0d
Root Token: 05602923-5020-1a84-af4b-bff0e9a838cd

==> Vault server configuration:

         Log Level: info
           Backend: inmem
        Listener 1: tcp (addr: "127.0.0.1:8200", tls: "disabled")

==> Vault server started! Log data will stream in below:

2015/04/28 23:52:40 [INFO] core: security barrier initialized
2015/04/28 23:52:40 [INFO] core: post-unseal setup starting
2015/04/28 23:52:40 [INFO] core: post-unseal setup complete
2015/04/28 23:52:40 [INFO] core: root token generated
2015/04/28 23:52:40 [INFO] core: pre-seal teardown starting
2015/04/28 23:52:40 [INFO] rollback: starting rollback manager
2015/04/28 23:52:40 [INFO] rollback: stopping rollback manager
2015/04/28 23:52:40 [INFO] core: pre-seal teardown complete
2015/04/28 23:52:40 [INFO] core: vault is unsealed
2015/04/28 23:52:40 [INFO] core: post-unseal setup starting
2015/04/28 23:52:40 [INFO] core: post-unseal setup complete
2015/04/28 23:52:40 [INFO] rollback: starting rollback manager
```

## Running with a configuration file

```
➜  docker run -it --rm -v /Users/dontrebootme/git/github/docker-vault/myconfig.hcl:/config.hcl --cap-add IPC_LOCK -p 8200:8200 dontrebootme/vault:0.1.0 server -config=/config.hcl -log-level=info
==> Vault server configuration:

         Log Level: info
           Backend: inmem
        Listener 1: tcp (addr: "127.0.0.1:8200", tls: "disabled")

==> Vault server started! Log data will stream in below:
```
