module github.com/sky-uk/terraform-provider-nsx

go 1.12

replace github.com/sky-uk/gonsx => github.com/orange-cloudfoundry/gonsx v0.4.1

require (
	github.com/hashicorp/hcl v0.0.0-20170509225359-392dba7d905e // indirect
	github.com/hashicorp/terraform-plugin-sdk v1.17.2
	github.com/sky-uk/gonsx v0.0.0-20180122153724-c3caef9aee9b
)
