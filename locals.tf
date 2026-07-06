locals {
  domain         = format("schema-registry.%s", trimprefix("${var.subdomain}.${var.base_domain}", "."))
  kafka_password = try(data.kubernetes_secret.kafka_user.data[var.kafka_password_secret_key], "")

  helm_values = [{
    cp-helm-charts = {
      cp-kafka = {
        enabled = false
      }
      cp-zookeeper = {
        enabled = false
      }
      cp-schema-registry = {
        enabled = true
        kafka = {
          bootstrapServers = "SASL_PLAINTEXT://${var.kafka_broker_name}-kafka-bootstrap:9092"
        }
        configurationOverrides = {
          "kafkastore.security.protocol" = "SASL_PLAINTEXT"
          "kafkastore.sasl.mechanism"    = "SCRAM-SHA-512"
          "kafkastore.sasl.jaas.config"  = "org.apache.kafka.common.security.scram.ScramLoginModule required username=\"${var.kafka_username}\" password=\"${local.kafka_password}\";"
        }
      }
      cp-kafka-rest = {
        enabled = false
      }
      cp-kafka-connect = {
        enabled = false
      }
      cp-ksql-server = {
        enabled = false
      }
      cp-control-center = {
        enabled = false
      }
    }
  }]

  helm_values_httproute = [{
    httproute = {
      enabled           = true
      host              = local.domain
      gateway_name      = var.gateway_name
      gateway_namespace = var.gateway_namespace
      backend_service   = var.oidc != null ? "schema-registry-oauth2-proxy" : "schema-registry-cp-schema-registry"
      backend_port      = var.oidc != null ? 4180 : 8081
    }
  }]

  helm_values_oauth2proxy = var.oidc != null ? [{
    oauth2proxy = {
      enabled      = true
      upstreamUrl  = "http://schema-registry-cp-schema-registry:8081"
      redirectUrl  = "https://${local.domain}/oauth2/callback"
      cookieSecret = random_password.oauth2_proxy_cookie_secret.result
      oidc = {
        issuerUrl    = var.oidc.issuer_url
        clientId     = var.oidc.client_id
        clientSecret = var.oidc.client_secret
      }
      extraArgs = concat(
        var.oidc.oauth2_proxy_extra_args,
        [for g in var.allowed_groups : "--allowed-group=${g}"]
      )
    }
  }] : []
}
