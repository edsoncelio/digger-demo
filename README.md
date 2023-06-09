# digger-demo
Demo for https://digger.dev/

## Requirements to run
* Change workflow permissions (at repo settings -> actions) to "Read and Write Permissions"
* Add the following variables to the action secrets:
    * AWS_ACCESS_KEY_ID: aws access key
    * AWS_SECRET_ACCESS_KEY: aws secret key
    * INFRACOST_API_KEY: infracost api key

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
* `digger.yml`: config file for digger  

## digger.yml configs
For this demo, there's a customized workflow called `staging_workflow` that will run for each PR in `projects/sandbox`:
* init
* validate
* fmt
* tfsec checks
* infracost checks (and post a comment and edit for each change)

## Examples
### infracost comment
<img width="910" alt="image" src="https://github.com/edsoncelio/digger-demo/assets/5833278/71a5c9fc-3db6-41c5-92a9-36ef8c17c291">

### tfsec report
<img width="890" alt="image" src="https://github.com/edsoncelio/digger-demo/assets/5833278/d7776260-42e5-48eb-8522-e883b13a4508">
