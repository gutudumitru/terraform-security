variable "rules_package_arns" {
  description = "Package arns you want to use for testing. By default it takes all the packages rules."
  type        = "list"

  default = []
}

variable "duration" {
  description = "Duration in seconds an assessment can take"
  default     = "3600"
}

variable "name" {
  description = "Name of your assessment"
}

variable "tags" {
  description = "Instance tags that you want to include in your security scan"
  type        = "map"
}

variable "schedule_expression" {
  description = "Schedule expression to tell when AWS inspector has to run. For example, cron(0 20 * * ? *) or rate(5 minutes)"
  default     = "cron(0 22 ? * SUN *)"
}
