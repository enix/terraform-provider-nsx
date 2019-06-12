module github.com/sky-uk/terraform-provider-nsx

go 1.12

replace github.com/sky-uk/gonsx => github.com/ArthurHlt/gonsx v0.0.0-fix-proxy

require (
	github.com/apparentlymart/go-cidr v1.0.0
	github.com/armon/go-radix v1.0.0
	github.com/aws/aws-sdk-go v1.19.18
	github.com/bgentry/go-netrc v0.0.0-20140422174119-9fd32a8b3d3d
	github.com/bgentry/speakeasy v0.1.0
	github.com/blang/semver v3.5.1+incompatible
	github.com/davecgh/go-spew v1.1.1
	github.com/go-ini/ini v1.28.1
	github.com/golang/protobuf v1.3.0
	github.com/gucumber/gucumber v0.0.0-20160715015914-71608e2f6e76
	github.com/hashicorp/errwrap v1.0.0
	github.com/hashicorp/go-cleanhttp v0.5.0
	github.com/hashicorp/go-getter v1.3.0
	github.com/hashicorp/go-hclog v0.0.0-20181001195459-61d530d6c27f
	github.com/hashicorp/go-multierror v1.0.0
	github.com/hashicorp/go-plugin v1.0.1-0.20190430211030-5692942914bb
	github.com/hashicorp/go-uuid v1.0.1
	github.com/hashicorp/go-version v1.1.0
	github.com/hashicorp/hcl v0.0.0-20170509225359-392dba7d905e
	github.com/hashicorp/hil v0.0.0-20190212112733-ab17b08d6590
	github.com/hashicorp/logutils v1.0.0
	github.com/hashicorp/terraform v0.12.1
	github.com/hashicorp/yamux v0.0.0-20180604194846-3520598351bb
	github.com/jmespath/go-jmespath v0.0.0-20180206201540-c2b33e8439af
	github.com/lsegal/gucumber v0.0.0-20160715015914-71608e2f6e76
	github.com/mattn/go-isatty v0.0.5
	github.com/mitchellh/cli v1.0.0
	github.com/mitchellh/copystructure v1.0.0
	github.com/mitchellh/go-homedir v1.0.0
	github.com/mitchellh/go-testing-interface v1.0.0
	github.com/mitchellh/hashstructure v1.0.0
	github.com/mitchellh/mapstructure v1.1.2
	github.com/mitchellh/reflectwalk v1.0.0
	github.com/pmezard/go-difflib v1.0.0
	github.com/posener/complete v1.2.1
	github.com/satori/go.uuid v1.2.0
	github.com/shiena/ansicolor v0.0.0-20151119151921-a422bbe96644
	github.com/sky-uk/gonsx v0.0.0-20180122153724-c3caef9aee9b
	github.com/stretchr/testify v1.3.0
	golang.org/x/crypto v0.0.0-20190426145343-a29dc8fdc734
	golang.org/x/net v0.0.0-20190502183928-7f726cade0ab
	golang.org/x/sys v0.0.0-20190502175342-a43fa875dd82
	golang.org/x/text v0.3.2
	google.golang.org/genproto v0.0.0-20190201180003-4b09977fb922
	google.golang.org/grpc v1.18.0
)
