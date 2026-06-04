output "acr_login_server" {
  description = "ACR login server (use this in GitHub Actions: docker push <login_server>/image:tag)."
  value       = module.acr.acr_login_server
}

output "acr_name" {
  description = "Name of the ACR."
  value       = module.acr.acr_name
}
