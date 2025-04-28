bharathkumardasaraju@pulumi-aws-project$ pulumi up
Previewing update (aws-dev)

View in Browser (Ctrl+O): https://app.pulumi.com/Bharathkumarraju/pulumi-aws-project/aws-dev/previews/9c199ac0-e30d-480e-a1ec-ba2308a9b87f

     Type                 Name                        Plan
 +   pulumi:pulumi:Stack  pulumi-aws-project-aws-dev  create
 +   └─ aws:s3:Bucket     bkrs-singapores-bucket      create

Outputs:
    bucketName: [unknown]

Resources:
    + 2 to create

Do you want to perform this update? yes
Updating (aws-dev)

View in Browser (Ctrl+O): https://app.pulumi.com/Bharathkumarraju/pulumi-aws-project/aws-dev/updates/1

     Type                 Name                        Status
 +   pulumi:pulumi:Stack  pulumi-aws-project-aws-dev  created (5s)
 +   └─ aws:s3:Bucket     bkrs-singapores-bucket      created (2s)

Outputs:
    bucketName: "bkrs-singapores-bucket-0ceda4b"

Resources:
    + 2 created

Duration: 7s

bharathkumardasaraju@pulumi-aws-project$


