require 'octokit'

client = Octokit::Client.new(access_token: ENV['GITHUB_ACCESS_TOKEN'])
client.create_pull_request(
    'oakbow/rails4_plain',  # 適当に変える
    'master',
    ENV['BRANCH'],
    'Bundle update',  # Title
    'body'                # Body
)