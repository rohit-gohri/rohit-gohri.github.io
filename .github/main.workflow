workflow "Build Everyday" {
  resolves = ["deploy-drone-action"]
  on = "schedule(30 5 * * *)"
}

action "deploy-drone-action" {
  uses = "./.action"
  secrets = ["GITHUB_TOKEN", "DRONE_TOKEN"]
  env = {
    DEPLOY_ENV = "build"
    DEPLOY_BUILD = "35"
  }
}
