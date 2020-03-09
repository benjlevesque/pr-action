## Usage:

```yaml
  - uses: benjlevesque/pr-action
    id: pr
  - run: | 
      echo "PR_NUMBER: $PR_NUMBER"
    env:
      PR_NUMBER: ${steps.pr.outputs.number}
```