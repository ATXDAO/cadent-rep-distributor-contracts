Author: Jacob Homanics

## Cadent Reputation Distributor

Utilizes [Reputation Tokens](https://github.com/ATXDAO/reputation) to distribute tokens on a set cadence.

Intended Workflow:
The CRD (Cadent Reputation Distributor) receives the distributor role on a Reputation Tokens Instance, A minter on that instance mints tokens to the CRD, then a User interacts with the CRD to claim tokens.

## Usage

### Test

```shell
$ forge test
```

### Test

```shell
$ forge coverage
```

### Gas Snapshots

```shell
$ forge snapshot
```