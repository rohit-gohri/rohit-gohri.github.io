workflow "Build Everyday" {
  resolves = ["deploy-drone-action"]
  on = "schedule(0 19 * * *)"
}

action "deploy-drone-action" {
  uses = "./.action"
  secrets = ["GITHUB_TOKEN", "DRONE_TOKEN"]
  env = {
    DEPLOY_ENV = "build"
  }
}
