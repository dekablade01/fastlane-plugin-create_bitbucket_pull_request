require 'fastlane/action'
require_relative '../helper/create_bitbucket_pull_request_helper'

module Fastlane
  module Actions
    class CreateBitbucketPullRequestAction < Action
      def self.run(_params)
      end

      def self.description
        'This lane creates create bitbucket pull request'
      end

      def self.authors
        ['Issarapong Poesua']
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        'This lane creates create bitbucket pull request'
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :head,
                                       env_name: 'CREATE_BITBUCKET_PULL_REQUEST_HEAD',
                                       description: 'The name of the branch where your changes are implemented',
                                       type: String),
          FastlaneCore::ConfigItem.new(key: :target,
                                       env_name: 'CREATE_BITBUCKET_PULL_REQUEST_TARGET',
                                       description: 'The name of the branch you want your changes pulled into',
                                       type: String),
          FastlaneCore::ConfigItem.new(key: :owner,
                                       env_name: 'CREATE_BITBUCKET_PULL_REQUEST_REPOSITORY_OWNER',
                                       description: 'The name of the repository owner (slug)',
                                       type: String),
          FastlaneCore::ConfigItem.new(key: :repository,
                                       env_name: 'CREATE_BITBUCKET_PULL_REQUEST_REPOSITORY_NAME',
                                       description: 'The name of the repository you want to submit the pull request to',
                                       type: String),
          FastlaneCore::ConfigItem.new(key: :title,
                                       env_name: 'CREATE_BITBUCKET_PULL_REQUEST_TITLE',
                                       description: 'The title of the pull request',
                                       type: String),
          FastlaneCore::ConfigItem.new(key: :description,
                                       env_name: 'CREATE_BITBUCKET_PULL_REQUEST_DESCRIPTION',
                                       description: 'The contents of the pull request',
                                       type: String),
          FastlaneCore::ConfigItem.new(key: :username,
                                       env_name: 'CREATE_BITBUCKET_PULL_REQUEST_USERNAME',
                                       description: 'The Bitbucket username (email)',
                                       type: String),
          FastlaneCore::ConfigItem.new(key: :password,
                                       env_name: 'CREATE_BITBUCKET_PULL_REQUEST_PASSWORD',
                                       description: 'The Bitbucket password',
                                       type: String)
        ]
      end

      def self.is_supported?(_platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
