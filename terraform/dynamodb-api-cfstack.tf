variable "nameespace" {
  default = "development"
}

resource "aws_cloudformation_stack" "development-resource-api-dynamodb-table" {
  name          = "development-resource-api-dynamodb-table"
  template_body = <<STACK
{
"AWSTemplateFormatVersion": "2010-09-09",
    "Description": "Resource API DynamoDB Table",
    "Parameters": {
        "Namespace": {
            "Description": "The namespace which this table belongs to",
            "Type": "String",
            "Default": "development"
        }
    },
    "Resources": {

        "DynamoDBTable": {
           "Type": "AWS::DynamoDB::Table",
            "Properties": {
                "AttributeDefinitions": [
                    {
                        "AttributeName" : "_id",
                        "AttributeType" : "S"
                    }
                ],
                "KeySchema": [
                    {
                        "AttributeName" : "_id",
                        "KeyType" : "HASH"
                    }
                ],
                "ProvisionedThroughput":
                {
                    "ReadCapacityUnits" : 5,
                    "WriteCapacityUnits" : 5
                },
                "TableName": { "Fn::Sub": "${var.nameespace}-resources" }
            }
        }

    }
}
STACK
}

resource "aws_cloudformation_stack" "development-renting-api-dynamodb-table" {
  name          = "development-renting-api-dynamodb-table"
  template_body = <<STACK
{
    "AWSTemplateFormatVersion": "2010-09-09",
        "Description": "Inventory API DynamoDB Table",
        "Parameters": {
            "Namespace": {
                "Description": "The namespace which this table belongs to",
                "Type": "String",
                "Default": "development"
            }
        },
        "Resources": {

            "DynamoDBTable": {
               "Type": "AWS::DynamoDB::Table",
                "Properties": {
                    "AttributeDefinitions": [
                        {
                            "AttributeName" : "_id",
                            "AttributeType" : "S"
                        }
                    ],
                    "KeySchema": [
                        {
                            "AttributeName" : "_id",
                            "KeyType" : "HASH"
                        }
                    ],
                    "ProvisionedThroughput":
                    {
                        "ReadCapacityUnits" : 5,
                        "WriteCapacityUnits" : 5
                    },
                    "TableName": { "Fn::Sub": "${var.nameespace}-renting" }
                }
            }

        }
    }
STACK
}

resource "aws_cloudformation_stack" "development-client-api-dynamodb-table" {
  name          = "development-client-api-dynamodb-table"
  template_body = <<STACK
{
    "AWSTemplateFormatVersion": "2010-09-09",
        "Description": "Clients API DynamoDB Table",
        "Parameters": {
            "Namespace": {
                "Description": "The namespace which this table belongs to",
                "Type": "String",
                "Default": "development"
            }
        },
        "Resources": {

            "DynamoDBTable": {
               "Type": "AWS::DynamoDB::Table",
                "Properties": {
                    "AttributeDefinitions": [
                        {
                            "AttributeName" : "_id",
                            "AttributeType" : "S"
                        }
                    ],
                    "KeySchema": [
                        {
                            "AttributeName" : "_id",
                            "KeyType" : "HASH"
                        }
                    ],
                    "ProvisionedThroughput":
                    {
                        "ReadCapacityUnits" : 5,
                        "WriteCapacityUnits" : 5
                    },
                    "TableName": { "Fn::Sub": "${var.nameespace}-clients" }
                }
            }

        }
    }
STACK
}

resource "aws_cloudformation_stack" "development-inventory-api-dynamodb-table" {
  name          = "development-inventory-api-dynamodb-table"
  template_body = <<STACK
{
    "AWSTemplateFormatVersion": "2010-09-09",
        "Description": "Inventory API DynamoDB Table",
        "Parameters": {
            "Namespace": {
                "Description": "The namespace which this table belongs to",
                "Type": "String",
                "Default": "development"
            }
        },
        "Resources": {

            "DynamoDBTable": {
               "Type": "AWS::DynamoDB::Table",
                "Properties": {
                    "AttributeDefinitions": [
                        {
                            "AttributeName" : "_id",
                            "AttributeType" : "S"
                        }
                    ],
                    "KeySchema": [
                        {
                            "AttributeName" : "_id",
                            "KeyType" : "HASH"
                        }
                    ],
                    "ProvisionedThroughput":
                    {
                        "ReadCapacityUnits" : 5,
                        "WriteCapacityUnits" : 5
                    },
                    "TableName": { "Fn::Sub": "${var.nameespace}-inventory" }
                }
            }

        }
    }
STACK
}