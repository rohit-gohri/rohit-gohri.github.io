workflow "Build On Monday" {
  resolves = ["deploy-drone-action"]
  on = "schedule(0 0 * * 1)"
}

action "deploy-drone-action" {
  uses = "./.action"
  secrets = ["GITHUB_TOKEN", "DRONE_TOKEN"]
  env = {
    DEPLOY_ENV = "build"
    DEPLOY_BUILD = "29"
  }
}
