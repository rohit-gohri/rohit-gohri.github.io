workflow "Start every Monday" {
  resolves = ["deploy-action"]
  on = "schedule(50 13 * * 1,6)"
}

action "deploy-action" {
  uses = "rohit-smpx/deploy-action@master"
  secrets = ["GITHUB_TOKEN"]
  env = {
    DEPLOY_ENV = "build"
  }
}
