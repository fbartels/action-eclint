# GitHub Action: Run eclint with reviewdog

[![Docker Image CI](https://github.com/fbartels/action-eclint/workflows/Docker%20Image%20CI/badge.svg)](https://github.com/fbartels/action-eclint/actions)
[![Release](https://img.shields.io/github/release/fbartels/action-eclint.svg?maxAge=43200)](https://github.com/fbartels/action-eclint/releases)

This action runs [eclint](https://github.com/greut/eclint) with
[reviewdog](https://github.com/reviewdog/reviewdog) on pull requests to improve
code review experience.

## Inputs

### `github_token`

**Required**. Must be in form of `github_token: ${{ secrets.github_token }}`'.
