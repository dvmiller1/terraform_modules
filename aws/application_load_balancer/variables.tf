variable "certificate_arn" {
  description = "(Required) The ARN of the server certificate to use for the HTTPS listener."
  type        = "string"
}

variable "environment" {
  description = "(Required) The environment of this load balancer. This is usually 'stage' or 'production'."
  type        = "string"
}

variable "instances" {
  description = "(Required) A list of instance IDs to attach to the load balancer."
  type        = "list"
}

variable "instances_count" {
  description = "(Required) The number of instances. This is required because of the Terraform bug https://github.com/hashicorp/terraform/issues/10857."
  type        = "string"
}

variable "name" {
  description = "(Required) The name of this load balancer. This is appended with the environment to set the name in AWS."
  type        = "string"
}

variable "security_group_for_instances" {
  description = "(Required) The ID of the security group on the instances used as targets. This is used to create rules which allow the load balancer to access the targets via HTTP and HTTPS."
  type        = "string"
}

variable "subnets" {
  description = "(Required) A list of subnet IDs to attach to the load balancer."
  type        = "list"
}

variable "vpc_id" {
  description = "(Required) The identifier of the VPC in which to create the resources related to this load balancer."
  type        = "string"
}

variable "health_check_path" {
  description = "(Optional) The destination for the health check request. Default /healthz."
  default     = "/healthz"
}

variable "internal" {
  description = "(Optional) If true, the LB will be internal. Default false."
  default     = false
}

variable "ssl_policy" {
  description = "(Optional) The name of the SSL Policy for the HTTPS listener. Default ELBSecurityPolicy-TLS-1-2-2017-01."
  default     = "ELBSecurityPolicy-TLS-1-2-2017-01"
}