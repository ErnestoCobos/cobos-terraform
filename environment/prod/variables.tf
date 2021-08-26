variable "hosted_zone" {
  type = string
  description = "It's the top-level domain"
}

variable "records" {
  type = list(object({
    type = string
    name = string
    ttl = string
    records = list(string)
  }))
  description = "List of records"
}