# hxdemo


```console
$ curl -XPOST -H 'content-type: application/json' http://localhost:8080/auth/verify
{
}

$ curl -X POST -H 'content-type: application/json' --data-binary '{"email": "bob@jetzig.dev", "password": "password123"}' http://localhost:8080/auth/verify
{
  "email": "bob@jetzig.dev",
  "password": "password123"
}
```

## Logs

```
Launching development server. [reload:enabled]
[exec] zig build -Denvironment=development -Djetzig_runner=true install --color on ✅
[startup:WARN] Running in development mode, using auto-generated cookie encryption key: IZaKvOsbnVoKX1ToOYdbUvri11zoU3Ee
[startup:WARN] Run `jetzig generate secret` and set `JETZIG_SECRET` to remove this warning.
[startup:WARN] No database configured in `config/database.zig`. Database operations are not available.
INFO  [2024-11-21T18:06:09] [worker-1] Job worker started.
INFO  [2024-11-21T18:06:09] [worker-3] Job worker started.
INFO  [2024-11-21T18:06:09] [worker-2] Job worker started.
INFO  [2024-11-21T18:06:09] [worker-0] Job worker started.
INFO  [2024-11-21T18:06:09] Listening on http://127.0.0.1:8080 [development]
INFO  [2024-11-21T18:06:14] [349.499us/POST/422 Unprocessable Entity] /auth/verify
INFO  [2024-11-21T18:06:19] [1.196ms/POST/201 Created] /auth/verify
```
