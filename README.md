# iac-with-pulumi
IaC with pulumi


## Bharaths Pulumi app

![pulumi up](imgs/img.png)

## pulumi aws
![pulumi aws up](imgs/img_1.png)

## pulumi aws stacks
![pulumi aws stacks](imgs/img_2.png)

### pulumi stacks
```shell

bharathkumardasaraju@pulumi-aws-project$ pulumi stack init sandbox
Created stack 'sandbox'
bharathkumardasaraju@pulumi-aws-project$ pulumi stack init production
Created stack 'production'
bharathkumardasaraju@pulumi-aws-project$ pwd
/Users/bharathkumardasaraju/external/iac-with-pulumi/demo1/lab2/pulumi-aws-project
bharathkumardasaraju@pulumi-aws-project$ pulumi config set region ap-south-1 --stack sandbox
bharathkumardasaraju@pulumi-aws-project$ pulumi config set region ap-south-1 --stack production
bharathkumardasaraju@pulumi-aws-project$ pulumi stack init dev
Created stack 'dev'
bharathkumardasaraju@pulumi-aws-project$ pulumi config set region ap-south-1 --stack dev       
bharathkumardasaraju@pulumi-aws-project$       


bharathkumardasaraju@pulumi-aws-project$ pulumi up --stack dev
Previewing update (dev)

View in Browser (Ctrl+O): https://app.pulumi.com/Bharathkumarraju/pulumi-aws-project/dev/previews/6dc06d47-215a-48a2-9f14-43b68fc63f84

     Type                 Name                    Plan       
 +   pulumi:pulumi:Stack  pulumi-aws-project-dev  create     
 +   └─ aws:s3:Bucket     bkrs-singapores-bucket  create     

Outputs:
    bucketName: [unknown]

Resources:
    + 2 to create

Do you want to perform this update? yes
Updating (dev)

View in Browser (Ctrl+O): https://app.pulumi.com/Bharathkumarraju/pulumi-aws-project/dev/updates/1

     Type                 Name                    Status           
 +   pulumi:pulumi:Stack  pulumi-aws-project-dev  created (5s)     
 +   └─ aws:s3:Bucket     bkrs-singapores-bucket  created (2s)     

Outputs:
    bucketName: "bkrs-singapores-bucket-185a737"

Resources:
    + 2 created

Duration: 7s

bharathkumardasaraju@pulumi-aws-project$ pulumi up --stack dev
Previewing update (dev)

View in Browser (Ctrl+O): https://app.pulumi.com/Bharathkumarraju/pulumi-aws-project/dev/previews/0125f82b-713f-4181-a4c3-320e2f5f279a

     Type                 Name                    Plan     
     pulumi:pulumi:Stack  pulumi-aws-project-dev           

Resources:
    2 unchanged

Do you want to perform this update? yes
Updating (dev)

View in Browser (Ctrl+O): https://app.pulumi.com/Bharathkumarraju/pulumi-aws-project/dev/updates/2

     Type                 Name                    Status     
     pulumi:pulumi:Stack  pulumi-aws-project-dev             

Outputs:
    bucketName: "bkrs-singapores-bucket-185a737"

Resources:
    2 unchanged

Duration: 2s

bharathkumardasaraju@pulumi-aws-project$ pwd
/Users/bharathkumardasaraju/external/iac-with-pulumi/demo1/lab2/pulumi-aws-project
bharathkumardasaraju@pulumi-aws-project$ 

```

### pulumi stack changes
```shell
bharathkumardasaraju@pulumi-aws-project$ pulumi up --stack dev
Previewing update (dev)

View in Browser (Ctrl+O): https://app.pulumi.com/Bharathkumarraju/pulumi-aws-project/dev/previews/a543a4a4-f921-43c4-8a57-b57da34737d5

     Type                 Name                     Plan       
     pulumi:pulumi:Stack  pulumi-aws-project-dev              
 +   ├─ aws:s3:Bucket     bkrs1-singapores-bucket  create     
 -   └─ aws:s3:Bucket     bkrs-singapores-bucket   delete     

Resources:
    + 1 to create
    - 1 to delete
    2 changes. 1 unchanged

Do you want to perform this update? yes
Updating (dev)

View in Browser (Ctrl+O): https://app.pulumi.com/Bharathkumarraju/pulumi-aws-project/dev/updates/3

     Type                 Name                     Status              
     pulumi:pulumi:Stack  pulumi-aws-project-dev                       
 +   ├─ aws:s3:Bucket     bkrs1-singapores-bucket  created (2s)        
 -   └─ aws:s3:Bucket     bkrs-singapores-bucket   deleted (0.98s)     

Outputs:
  ~ bucketName: "bkrs-singapores-bucket-185a737" => "bkrs1-singapores-bucket-f27db92"

Resources:
    + 1 created
    - 1 deleted
    2 changes. 1 unchanged

Duration: 7s

bharathkumardasaraju@pulumi-aws-project$ 

```

#### from linkedin learning

https://www.linkedin.com/learning/multicloud-application-infrastructure-as-code-with-pulumi/manage-stacks-and-configurations-with-pulumi
