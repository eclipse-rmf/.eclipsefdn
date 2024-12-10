local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-rmf') {
  settings+: {
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('org.eclipse.rmf') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      web_commit_signoff_required: false,
      workflows+: {
        enabled: false,
      },
    },
    orgs.newRepo('org.eclipse.rmf.documentation') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      web_commit_signoff_required: false,
      workflows+: {
        enabled: false,
      },
    },
    orgs.newRepo('rmf-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_alerts_enabled: false,
      web_commit_signoff_required: false,
      workflows+: {
        enabled: false,
      },
    },
  ],
} + {
  # snippet added due to 'https://github.com/EclipseFdn/otterdog-configs/blob/main/blueprints/add-dot-github-repo.yml'
  _repositories+:: [
    orgs.newRepo('.github')
  ],
}