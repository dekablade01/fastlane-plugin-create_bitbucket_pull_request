describe Fastlane::Actions::CreateBitbucketPullRequestAction do
  describe '#run' do
    it('prints a message') do
      response = double(:response)
      allow(Net::HTTP).to receive(:post).and_return(response)
      allow(response).to receive(:body).and_return('{
        "rendered": {
            "description": {
                "raw": "description",
                "markup": "markdown",
                "html": "<p>description</p>",
                "type": "rendered"
            },
            "title": {
                "raw": "title",
                "markup": "markdown",
                "html": "<p>title</p>",
                "type": "rendered"
            }
        },
        "type": "pullrequest",
        "description": "description",
        "links": {
            "decline": {
                "href": "https://api.bitbucket.org/2.0/repositories/dekablade01/portfolio/pullrequests/26/decline"
            },
            "diffstat": {
                "href": "https://api.bitbucket.org/2.0/repositories/dekablade01/portfolio/diffstat/dekablade01/portfolio:9787ca1dca7a%0Db22563ae0a06?from_pullrequest_id=26"
            },
            "commits": {
                "href": "https://api.bitbucket.org/2.0/repositories/dekablade01/portfolio/pullrequests/26/commits"
            },
            "self": {
                "href": "https://api.bitbucket.org/2.0/repositories/dekablade01/portfolio/pullrequests/26"
            },
            "comments": {
                "href": "https://api.bitbucket.org/2.0/repositories/dekablade01/portfolio/pullrequests/26/comments"
            },
            "merge": {
                "href": "https://api.bitbucket.org/2.0/repositories/dekablade01/portfolio/pullrequests/26/merge"
            },
            "html": {
                "href": "https://bitbucket.org/dekablade01/portfolio/pull-requests/26"
            },
            "activity": {
                "href": "https://api.bitbucket.org/2.0/repositories/dekablade01/portfolio/pullrequests/26/activity"
            },
            "diff": {
                "href": "https://api.bitbucket.org/2.0/repositories/dekablade01/portfolio/diff/dekablade01/portfolio:9787ca1dca7a%0Db22563ae0a06?from_pullrequest_id=26"
            },
            "approve": {
                "href": "https://api.bitbucket.org/2.0/repositories/dekablade01/portfolio/pullrequests/26/approve"
            },
            "statuses": {
                "href": "https://api.bitbucket.org/2.0/repositories/dekablade01/portfolio/pullrequests/26/statuses"
            }
        },
        "title": "title",
        "close_source_branch": false,
        "reviewers": [],
        "id": 26,
        "destination": {
            "commit": {
                "hash": "b22563ae0a06",
                "type": "commit",
                "links": {
                    "self": {
                        "href": "https://api.bitbucket.org/2.0/repositories/dekablade01/portfolio/commit/b22563ae0a06"
                    },
                    "html": {
                        "href": "https://bitbucket.org/dekablade01/portfolio/commits/b22563ae0a06"
                    }
                }
            },
            "repository": {
                "links": {
                    "self": {
                        "href": "https://api.bitbucket.org/2.0/repositories/dekablade01/portfolio"
                    },
                    "html": {
                        "href": "https://bitbucket.org/dekablade01/portfolio"
                    },
                    "avatar": {
                        "href": "https://bytebucket.org/ravatar/%7B4160b82b-f43a-4ead-90c0-7e7dd1a57dee%7D?ts=default"
                    }
                },
                "type": "repository",
                "name": "portfolio",
                "full_name": "dekablade01/portfolio",
                "uuid": "{4160b82b-f43a-4ead-90c0-7e7dd1a57dee}"
            },
            "branch": {
                "name": "master"
            }
        },
        "created_on": "2020-02-28T18:22:12.637678+00:00",
        "summary": {
            "raw": "description",
            "markup": "markdown",
            "html": "<p>description</p>",
            "type": "rendered"
        },
        "source": {
            "commit": {
                "hash": "9787ca1dca7a",
                "type": "commit",
                "links": {
                    "self": {
                        "href": "https://api.bitbucket.org/2.0/repositories/dekablade01/portfolio/commit/9787ca1dca7a"
                    },
                    "html": {
                        "href": "https://bitbucket.org/dekablade01/portfolio/commits/9787ca1dca7a"
                    }
                }
            },
            "repository": {
                "links": {
                    "self": {
                        "href": "https://api.bitbucket.org/2.0/repositories/dekablade01/portfolio"
                    },
                    "html": {
                        "href": "https://bitbucket.org/dekablade01/portfolio"
                    },
                    "avatar": {
                        "href": "https://bytebucket.org/ravatar/%7B4160b82b-f43a-4ead-90c0-7e7dd1a57dee%7D?ts=default"
                    }
                },
                "type": "repository",
                "name": "portfolio",
                "full_name": "dekablade01/portfolio",
                "uuid": "{4160b82b-f43a-4ead-90c0-7e7dd1a57dee}"
            },
            "branch": {
                "name": "develop"
            }
        },
        "comment_count": 0,
        "state": "OPEN",
        "task_count": 0,
        "participants": [],
        "reason": "",
        "updated_on": "2020-03-02T03:18:49.093936+00:00",
        "author": {
            "display_name": "Issarapong Poesua",
            "uuid": "{38a20b68-81ab-472b-a3e1-1e261bb0df2e}",
            "links": {
                "self": {
                    "href": "https://api.bitbucket.org/2.0/users/%7B38a20b68-81ab-472b-a3e1-1e261bb0df2e%7D"
                },
                "html": {
                    "href": "https://bitbucket.org/%7B38a20b68-81ab-472b-a3e1-1e261bb0df2e%7D/"
                },
                "avatar": {
                    "href": "https://avatar-management--avatars.us-west-2.prod.public.atl-paas.net/557058:27317ba8-be46-41e3-9935-0414757ee26e/f164780c-173f-47b8-94ac-2e54aa2fbd1d/128"
                }
            },
            "nickname": "dekablade01",
            "type": "user",
            "account_id": "557058:27317ba8-be46-41e3-9935-0414757ee26e"
        },
        "merge_commit": null,
        "closed_by": null
    }')

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
      allow(response).to receive(:body).and_return('{
        "type": "error",
        "error": {
            "fields": {
                "destination": [
                    "branch not found: mster"
                ]
            },
            "message": "destination: branch not found: mster"
        }
    }')

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
