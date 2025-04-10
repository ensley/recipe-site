# Joyce's Recipes

<https://joycesrecipes.net>

## Building the site

```shell
$ hugo build
```

## Caching search results

```shell
$ pagefind --site public
```

## Publishing changes

```shell
$ aws s3 sync public s3://joyces-recipes
```

Rebuild the project in AWS Amplify.
