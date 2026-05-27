# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_autoscaler
# Resource: MIG Autoscaling
# Note: without autoscaler the MIG will not provision VMs with this config
resource "google_compute_region_autoscaler" "wk10-autoscaler" {
  name = "wk10-autoscaler"
  # region = "" (optional if provider default is set)
  target = google_compute_region_instance_group_manager.wk10mig.id

  autoscaling_policy {
    max_replicas    = 4
    min_replicas    = 3
    cooldown_period = 60

    # 70% CPU for autoscaling event
    cpu_utilization {
      target = 0.7
    }
  }
}