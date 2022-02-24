import Danger

let danger = Danger()

// Pull request size
let bigPRThreshold = 1
let additions = danger.github.pullRequest.additions!
let deletions = danger.github.pullRequest.deletions!
let changedFiles = danger.github.pullRequest.changedFiles!
if (additions + deletions > bigPRThreshold) {
    warn("PR size seems relatively large. ✂️ If this PR contains multiple changes, please split each into separate PR will helps faster, easier review.")
}
