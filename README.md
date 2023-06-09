# digger-demo
Demo with https://digger.dev/

## How it works

This repo contains the following structure:
```
.
├── README.md
├── digger.yml
└── projects
    ├── prod
    │   ├── backend.tf
    │   └── main.tf
    └── staging
        ├── backend.tf
        └── main.tf
```

When,   
* `projects`: dir with environments (`staging`, `prod`)   
* `digger.yml`: config file with digger configs   

## digger.yml configs
For this demo, there's a customized setup called `staging_workflow` that will run for each PR:
* init
* validate
* fmt
* tfsec checks
* infracost checks (and post a comment and edit for each change)

