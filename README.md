# vim

```bash
$ docker build . -t custom-vim

$ docker run --rm -v "$PWD:/$PWD" -w $PWD -it custom-vim vim
```
