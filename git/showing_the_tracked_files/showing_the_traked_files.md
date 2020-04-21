# How can I make git show a list of the files that are being tracked?

If you want to list all the files currently being tracked under the branch `master`, you could use this command:

```bash
git ls-tree -r master --name-only
```

If you want a list of files that ever existed (i.e. including deleted files):
```bash
git log --pretty=format: --name-only --diff-filter=A | sort - | sed '/^$/d'
```
