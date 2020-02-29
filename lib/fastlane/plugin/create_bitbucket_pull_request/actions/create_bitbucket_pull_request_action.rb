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
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "CREATE_BITBUCKET_PULL_REQUEST_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
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
