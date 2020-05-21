# vim

```bash
$ docker build . -t custom-vim

$ docker run --rm -v "$PWD:/$PWD" -w $PWD -it custom-vim vim

or

$ echo alias vim="'"'docker run --rm \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v "$PWD:/$PWD" \
  -w="/$PWD" \
  custom-vim vim'"'" >> ~/.bashrc
$ source ~/.bashrc
```


