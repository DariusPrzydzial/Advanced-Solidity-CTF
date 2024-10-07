## ENCODE Club Expert Solidity 5 CTFs
https://www.solidityctf.xyz/


### Build

```shell
$ forge build
```

### Compile

```shell
$ forge compile --optimizer-runs 200
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Deploy

```shell
$ forge script ./script/CTF5.s.sol --chain sepolia --rpc-url $RPC_URL_SEPOLIA  --broadcast --optimize-runs 200
```

### Help

```shell
$ forge --help
```
