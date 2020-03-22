# Aws eb cli action 

![Run tests](https://github.com/hmanzur/actions-aws-eb/workflows/Run%20tests/badge.svg)

This action run [eb cli](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3.html)

## Inputs

### `command`

**Required** The command to run on cli.

## Example usage

```YAML
uses: actions/actions-aws-eb@v1
with:
  command: 'deploy ${{ secrets.ENVIRONMENT_NAME }}'
```
