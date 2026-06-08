resource "aws_eks_node_group" "business" {

  cluster_name    = aws_eks_cluster.this.name
  node_group_name = "business"

  node_role_arn = aws_iam_role.node_role.arn

  subnet_ids = var.private_subnet_ids

  instance_types = [
    var.buss_instance_type
  ]

  scaling_config {

    desired_size = var.buss_desired_size
    min_size     = var.buss_min_size
    max_size     = var.buss_max_size
  }

  capacity_type = "ON_DEMAND"

  tags = merge(
    local.common_tags,
    {
      workload = "business"
    }
  )
}