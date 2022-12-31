# fictional-pancake

A simple script to rebase the dev repo being worked on to master

## Usage

1. Navigate to the repo you wish to rebase
1. Invoke the script, `sh rebase-master.sh` to perform the task.

By default the script assumes you use `master` as the primary branch and `dev` as the developement branch. These can be changed by parsing the arguments listed below.

## Arguments

- `--master=YOUR_MASTER_BRANCH`
- `--dev=YOUR_DEV_BRANCH`

Either of these can be parsed in any combination. For example:

```sh
sh rebase-master.sh --master=main
```

## Attribution

Gareth Palmer [Github](https://github.com/projector22), [Gitlab](https://gitlab.com/projector22).

I built this for my own use, but anyone is welcome to take and adapt the tools to their own purposes. It is intended to be pulled by [Linux New System](https://github.com/projector22/linux-new-system).
