require 'fastlane_core/ui/ui'

module Fastlane
  UI = FastlaneCore::UI unless Fastlane.const_defined?('UI')

  module Helper
    class CreateBitbucketPullRequestHelper
      # class methods that you define here become available in your action
      # as `Helper::CreateBitbucketPullRequestHelper.your_method`
      #
      def self.show_message
        UI.message('Hello from the create_bitbucket_pull_request plugin helper!')
      end
    end
  end
end
