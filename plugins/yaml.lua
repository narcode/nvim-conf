return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        yamlls = {
          settings = {
            yaml = {
              schemas = {
                ["https://raw.githubusercontent.com/awslabs/goformation/master/schema/cloudformation.schema.json"] = {
                  "*.cfn.yaml",
                  "*.cfn.yml",
                  "cloudformation/*.yaml",
                  "cloudformation/*.yml",
                },
                ["https://raw.githubusercontent.com/aws/serverless-application-model/main/samtranslator/validator/sam_schema/schema.json"] = {
                  "template.yaml",
                  "template.yml",
                },
              },
              customTags = {
                "!And sequence",
                "!If sequence",
                "!Not sequence",
                "!Equals sequence",
                "!Or sequence",
                "!FindInMap sequence",
                "!Base64 scalar",
                "!Cidr scalar",
                "!Ref scalar",
                "!Sub scalar",
                "!GetAtt scalar",
                "!GetAZs scalar",
                "!ImportValue scalar",
                "!Select sequence",
                "!Split sequence",
                "!Join sequence",
              },
            },
          },
        },
      },
    },
  },
}
