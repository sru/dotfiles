[alias]
	a = add
	b = branch
	c = commit
	cm = commit -m
	co = checkout
	d = diff
	ds = diff --staged
	f = fetch
	fp = fetch --prune
	l = log
	lo = log --oneline
	m = merge
	p = push
	pu = push --set-upstream origin HEAD
	r = rebase
	s = status --short --branch
[push]
	default = simple
[rebase]
	autosquash = true
[pull]
	ff = only
