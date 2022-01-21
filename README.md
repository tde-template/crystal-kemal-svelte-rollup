# TEMPLATE CRYSTAL KEMAL SVELTE ROLLUP

A simple web app template using crytal as webserver with kemal framework and websocket support, svelte and rollup as javascript front framework, Jest for testing and bulma as css framework (all using pug, typescript and scss). 

## Docker

### Commands

build and create the service but don't start it:
```bash
docker-compose up --build --force-recreate --no-start
```

start service:
```bash
docker-compose start
```

list available service:
```bash
docker-compose images
```

exec shell on container:
```bash
docker-compose exec template-crystal-kemal-svelte-rollup ash
```

stop and destroy container and every stuff related:
```bash
docker-compose down
```

remove container
```bash
docker-compose rm -f
```

## Install and build steps

```
cd /opt/workspace
npm install
shards install
npm run check
npm run test
npm run build
npm run start
npm run start:watch
npm run start:crystal
```

## Git flow 

The Git Flow is the most known workflow on this list. It was created by Vincent Driessen in 2010 and it is based in two main branches with infinite lifetime:
- main : this branch contains production code. All development code is merged into main sometime.
- develop : this branch contains pre-production code. When the features are finished then they are merged into develop.

During the development cycle, a variety of supporting branches are used:
- us/* : derived from feature/* if different developers work on a same user story that need to be split.
- feature/* : feature branches are used to develop new features for the upcoming releases. May branch off from develop and must merge into develop.
- hotfix/* : hotfix branches are necessary to act immediately upon an undesired status of main. May branch off from main and must merge into main anddevelop.
- release/* : release branches support preparation of a new production release. They allow many minor bug to be fixed and preparation of meta-data for a release. May branch off from develop and must merge into main and develop.

this image describe the worflow:

<img src="https://git-flow.readthedocs.io/fr/latest/_images/gitflow.png" width="500">

## Related links

- <https://crystal-lang.org/>
- <https://crystal-lang.org/reference/getting_started/index.html>
- <https://kemalcr.com/>
- <https://kemalcr.com/guide/>
- <https://svelte.dev/>
- <https://svelte.dev/blog/the-easiest-way-to-get-started>
- <https://github.com/sveltejs/svelte-preprocess>
- <https://github.com/sveltejs/svelte-preprocess/blob/main/docs/getting-started.md>
- <https://jestjs.io/>
- <https://bulma.io/>

## Contributing

**Product Owner :**
- [Thibault DESAULE](mailto:thibault@desaules.me)

**Scrum Master :**
- [Thibault DESAULE](mailto:thibault@desaules.me)

**Development team :**
- [Thibault DESAULE](mailto:thibault@desaules.me)

***
