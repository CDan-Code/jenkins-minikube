resource "helm_release" "jenkins" {
    name      = "jenkins"
    chart     = "stable/jenkins"
    namespace = "jenkins"

    values = [
      "${file("jenkins-values.yaml")}"
    ]
    depends_on = ["kubernetes_namespace.jenkins"]
}

