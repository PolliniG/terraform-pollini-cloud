variable "project_id" {
  description = "ID del proyecto de Google Cloud"
  type        = string
}

variable "region" {
  description = "Región donde se crearán los recursos"
  type        = string
  default     = "southamerica-east1"
}

variable "zone" {
  description = "Zona donde se creará la VM"
  type        = string
  default     = "southamerica-east1-a"
}



#########################################
# VARIABLES DE LA MÁQUINA VIRTUAL
#########################################

variable "vm_name" {
  description = "Nombre de la instancia"
  type        = string
  default     = "monitoreo1"
}

variable "machine_type" {
  description = "Tipo de máquina"
  type        = string
  default     = "e2-medium"
}

variable "boot_image" {
  description = "Imagen del SO para el disco de arranque"
  type        = string
  default     = "debian-cloud/debian-12"
}

variable "boot_disk_size" {
  description = "Tamaño del disco de arranque en GB"
  type        = number
  default     = 20
}

#########################################
# RED / ETIQUETAS
#########################################

variable "network" {
  description = "Red donde se conectará la VM"
  type        = string
  default     = "default"
}

variable "subnetwork" {
  description = "Subred donde se conectará la VM"
  type        = string
  default     = null
}

variable "labels" {
  description = "Etiquetas aplicadas a la instancia"
  type        = map(string)
  default     = {
    environment = "production"
    monitored   = "true"
  }
