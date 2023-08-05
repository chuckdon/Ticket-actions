module.exports = {
    branches: "master",
    repositoryUrl: "git@github.com:chuckdon/ticket-actions.git",
    plugins: [
      '@semantic-release/commit-analyzer',
      '@semantic-release/release-notes-generator',
      '@semantic-release/git',
      '@semantic-release/github']
 }
 