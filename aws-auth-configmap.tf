resource "kubernetes_config_map" "aws-auth" {

  metadata {
    name      = "aws-auth"
    namespace = "kube-system"
  }


  data = {
    mapRoles = "${file("${path.module}/aws-auth.yml")}"
  }
}
