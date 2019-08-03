workflow "Start every Monday" {
  resolves = ["deploy-action"]
  on = "schedule(22,30 0,20 * * 1,6)"
}

action "deploy-action" {
  uses = "./.action"
  secrets = ["GITHUB_TOKEN", "DRONE_TOKEN"]
  env = {
    DEPLOY_ENV = "build"
  }
}
