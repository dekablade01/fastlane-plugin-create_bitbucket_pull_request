require 'fastlane/action'
require_relative '../helper/create_bitbucket_pull_request_helper'
require 'net/http'
require 'uri'
require 'json'

module Fastlane
  module Actions
    class CreateBitbucketPullRequestAction < Action
      def self.run(_params)
        UI.message("Creating new bitbucket pull request from '#{_params[:head]}' to branch '#{_params[:target]}' of '#{_params[:owner]}/#{_params[:repository]}'")
        response = JSON.parse(Net::HTTP.post(
          URI("https://api.bitbucket.org/2.0/repositories/#{_params[:owner]}/#{_params[:repository]}/pullrequests"),
          {
            "destination": { "branch": { "name": _params[:target] } },
            "source": { "branch": { "name": _params[:head] } },
            "title": _params[:title],
            "description": _params[:description]
          }.to_json,
          "Authorization": "Basic #{Base64.encode64("#{_params[:username]}:#{_params[:password]}").gsub("\n", '')}",
          "Content-Type": 'application/json'
        ).body)

        if response['error']
          raise(response['error']['message'])
        else
          UI.message('The pull request has been created successfully')
          UI.message("#{response['links']['html']['href']}")
          response['links']['html']['href']
        end
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
