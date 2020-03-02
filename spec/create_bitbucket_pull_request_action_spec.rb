describe Fastlane::Actions::CreateBitbucketPullRequestAction do
  describe '#run' do
    it('prints a message') do
      response = double(:response)
      allow(Net::HTTP).to receive(:post).and_return(response)
      allow(response).to receive(:body).and_return(File.open("spec/fixtures/success.json").read)

      url = Fastlane::Actions::CreateBitbucketPullRequestAction.run(
        head: 'any-branch',
        target: 'master',
        owner: 'dekablade01',
        repository: 'portfolio',
        title: 'title',
        description: 'description'
      )

      expect(url).to eq('https://bitbucket.org/dekablade01/portfolio/pull-requests/26')
    end

    it 'prints a message' do
      response = double(:response)
      allow(Net::HTTP).to receive(:post).and_return(response)
      allow(response).to receive(:body).and_return(File.open("spec/fixtures/failure.json").read)

      expect do
        Fastlane::Actions::CreateBitbucketPullRequestAction.run(
          head: 'any-branch',
          target: 'master',
          owner: 'dekablade01',
          repository: 'portfolio',
          title: 'title',
          description: 'description'
        )
      end.to raise_error(RuntimeError, 'destination: branch not found: mster')
    end
  end
end
