resource "aws_security_group" "eks_cluster" {

  name        = "${local.name_prefix}-eks-cluster"
  description = "EKS Cluster Security Group"
  vpc_id      = var.vpc_id

  tags = local.common_tags
}

resource "aws_security_group" "eks_nodes" {

  name        = "${local.name_prefix}-eks-nodes"
  description = "EKS Node Security Group"
  vpc_id      = var.vpc_id

  tags = local.common_tags
}

resource "aws_security_group_rule" "node_to_cluster" {

  type                     = "ingress"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
  security_group_id        = aws_security_group.eks_cluster.id
  source_security_group_id = aws_security_group.eks_nodes.id
}