resource "harvester_storageclass" "vmstate-persistence" {
  allow_volume_expansion = true
  description            = null
  is_default             = false
  name = "vmstate-persistence"
  parameters = {
    migratable = "true"
    numberOfReplicas    = "2"
    staleReplicaTimeout = "30"
  }
  reclaim_policy      = "Delete"
  tags                = {}
  volume_binding_mode = "Immediate"
  volume_provisioner  = "driver.longhorn.io"
}

resource "harvester_storageclass" "harvester-longhorn" {
  allow_volume_expansion = true
  description            = null
  is_default             = true
  labels = {
    "app.kubernetes.io/managed-by" = "Helm"
    "objectset.rio.cattle.io/hash" = "e852fa897f5eae59a44b4bfe186aad80b10b94b3"
  }
  name = "harvester-longhorn"
  parameters = {
    baseImage           = ""
    fromBackup          = ""
    migratable          = "true"
    numberOfReplicas    = "3"
    staleReplicaTimeout = "30"
  }
  reclaim_policy      = "Delete"
  tags                = {}
  volume_binding_mode = "Immediate"
  volume_provisioner  = "driver.longhorn.io"
}

resource "harvester_storageclass" "longhorn" {
  allow_volume_expansion = true
  description            = null
  is_default             = false
  labels                 = {}
  name                   = "longhorn"
  parameters = {
    backupTargetName          = "default"
    dataEngine                = "v1"
    dataLocality              = "disabled"
    disableRevisionCounter    = "true"
    fromBackup                = ""
    fsType                    = "ext4"
    migratable                = "true"
    numberOfReplicas          = "3"
    staleReplicaTimeout       = "30"
    unmapMarkSnapChainRemoved = "ignored"
  }
  reclaim_policy      = "Delete"
  tags                = {}
  volume_binding_mode = "Immediate"
  volume_provisioner  = "driver.longhorn.io"
}

resource "harvester_storageclass" "longhorn-static" {
  allow_volume_expansion = true
  description            = null
  is_default             = false
  labels                 = {}
  name                   = "longhorn-static"
  parameters = {
    staleReplicaTimeout = "30"
  }
  reclaim_policy      = "Delete"
  tags                = {}
  volume_binding_mode = "Immediate"
  volume_provisioner  = "driver.longhorn.io"
}
