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

variable "machine_type" {
  description = "Tipo de máquina"
  type        = string
  default     = "e2-medium"
}

variable "vm_name" {
  description = "Nombre de la máquina virtual"
  type        = string
  default     = "monitoreo-prueba"
}
