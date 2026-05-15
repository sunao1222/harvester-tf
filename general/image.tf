resource "harvester_image" "opensuse160" {
  name               = "opensuse160"
  namespace          = "default"
  display_name       = "leap-16.0-minimal-vm.x86_64-cloud.qcow2"
  storage_class_name = harvester_storageclass.vmstate-persistence.name
  source_type        = "download"
  url                = "https://download.opensuse.org/distribution/leap/16.0/appliances/Leap-16.0-Minimal-VM.x86_64-Cloud.qcow2"
}
