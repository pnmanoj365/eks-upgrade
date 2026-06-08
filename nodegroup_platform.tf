resource "aws_eks_node_group" "platform" {

  cluster_name    = aws_eks_cluster.this.name
  node_group_name = "platform"

  node_role_arn = aws_iam_role.node_role.arn

  subnet_ids = var.private_subnet_ids

  instance_types = [
    var.platform_instance_type
  ]

  scaling_config {

    desired_size = var.platform_desired_size
    min_size     = var.platform_min_size
    max_size     = var.platform_max_size
  }

  capacity_type = "ON_DEMAND"

  tags = merge(
    local.common_tags,
    {
      workload = "platform"
    }
  )
}