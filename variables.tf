variable "containerengine_virtual_node_pools_lookup" {
  description = <<EOT
Map of containerengine_virtual_node_pools_lookup, attributes below
Required:
    - compartment_id
Optional:
    - cluster_id
    - display_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    cluster_id     = optional(string)
    display_name   = optional(string)
    state          = optional(list(string))
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

