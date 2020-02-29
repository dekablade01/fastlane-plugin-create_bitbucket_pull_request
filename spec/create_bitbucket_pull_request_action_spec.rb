describe Fastlane::Actions::CreateBitbucketPullRequestAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with('The create_bitbucket_pull_request plugin is working!')

      Fastlane::Actions::CreateBitbucketPullRequestAction.run(nil)
    end
  end
end
