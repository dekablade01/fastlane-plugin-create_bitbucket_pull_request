# create_bitbucket_pull_request plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-create_bitbucket_pull_request)

## Getting Started

This project is a [_fastlane_](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-create_bitbucket_pull_request`, add it to your project by running:

```bash
fastlane add_plugin create_bitbucket_pull_request
```

## About create_bitbucket_pull_request

This lane creates create bitbucket pull request

**Note to author:** Add a more detailed description about this plugin here. If your plugin contains multiple actions, make sure to mention them here.

## Example

Check out the [example `Fastfile`](fastlane/Fastfile) to see how to use this plugin. Try it by cloning the repo, running `fastlane install_plugins` and `bundle exec fastlane test`.

## Options

| Key         | Description                                                       | ENV VARIABLE                                   | Default |
|-------------|-------------------------------------------------------------------|------------------------------------------------|---------|
| head        | The name of the branch where your changes are implemented         | CREATE_BITBUCKET_PULL_REQUEST_HEAD             |         |
| target      | The name of the branch you want your changes pulled into          | CREATE_BITBUCKET_PULL_REQUEST_TARGET           |         |
| owner       | The name of the repository owner (slug)                           | CREATE_BITBUCKET_PULL_REQUEST_REPOSITORY_OWNER |         |
| repository  | The name of the repository you want to submit the pull request to | CREATE_BITBUCKET_PULL_REQUEST_REPOSITORY_NAME  |         |
| title       | The title of the pull request                                     | CREATE_BITBUCKET_PULL_REQUEST_TITLE            |         |
| description | The contents of the pull request                                  | CREATE_BITBUCKET_PULL_REQUEST_DESCRIPTION      |         |
| username    | The Bitbucket username (email)                                    | CREATE_BITBUCKET_PULL_REQUEST_USERNAME         |         |
| password    | The Bitbucket password                                            | CREATE_BITBUCKET_PULL_REQUEST_PASSWORD         |         |

**Note to author:** Please set up a sample project to make it easy for users to explore what your plugin does. Provide everything that is necessary to try out the plugin in this project (including a sample Xcode/Android project if necessary)

## Run tests for this plugin

To run both the tests, and code style validation, run

```
rake
```

To automatically fix many of the styling issues, use
```
rubocop -a
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using _fastlane_ Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About _fastlane_

_fastlane_ is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
