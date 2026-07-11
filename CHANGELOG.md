# Changelog

## [1.6.0](https://github.com/gersonrs/modern-gitops-stack-module-cp-schema-registry/compare/v1.5.1...v1.6.0) (2026-07-11)


### 🚀 New Features

* add namespace_labels variable to all modules ([e80d061](https://github.com/gersonrs/modern-gitops-stack-module-cp-schema-registry/commit/e80d061b2a059dea79b1f01eeecddffa69b8c88b))
* harden schema registry broker authentication ([caf7d55](https://github.com/gersonrs/modern-gitops-stack-module-cp-schema-registry/commit/caf7d557adf3e21c653166acd952eacde3bc31ac))
* harden schema registry broker authentication ([3814e4d](https://github.com/gersonrs/modern-gitops-stack-module-cp-schema-registry/commit/3814e4db549072e9e31bbcc9e99ed10e7af4764f))


### 🔥 Bug Fixes

* tolerate missing kafka user secret during bootstrap ([6d244ff](https://github.com/gersonrs/modern-gitops-stack-module-cp-schema-registry/commit/6d244ffa5546a08ea4858221e3538ca79278b2ab))

## [1.5.1](https://github.com/gersonrs/modern-gitops-stack-module-cp-schema-registry/compare/v1.5.0...v1.5.1) (2026-05-20)


### 🔥 Bug Fixes

* remove merge markers from schema-registry httproute ([0254e73](https://github.com/gersonrs/modern-gitops-stack-module-cp-schema-registry/commit/0254e738877f270a3b036b08f687ec8e791cd215))

## [1.5.0](https://github.com/gersonrs/modern-gitops-stack-module-cp-schema-registry/compare/v1.4.0...v1.5.0) (2026-05-20)


### 🚀 New Features

* add oauth2-proxy OIDC protection for Schema Registry HTTPRoute ([cf18352](https://github.com/gersonrs/modern-gitops-stack-module-cp-schema-registry/commit/cf1835234ba3f001a199e55472b2e7fac68d8751))
* protect Schema Registry with OIDC oauth2-proxy ([d8c4c77](https://github.com/gersonrs/modern-gitops-stack-module-cp-schema-registry/commit/d8c4c77316a1c3cdef8ec2159e366e8e8eabe640))


### ⚙️ Chores

* remove local terraform lockfile ([f982818](https://github.com/gersonrs/modern-gitops-stack-module-cp-schema-registry/commit/f982818349227b9afc580da7539d421e239905d5))
* remove temporary marker file ([1f55791](https://github.com/gersonrs/modern-gitops-stack-module-cp-schema-registry/commit/1f55791c630da1cfa83923925b95477e346fb7f6))
* remove temporary PR marker ([80ae5f0](https://github.com/gersonrs/modern-gitops-stack-module-cp-schema-registry/commit/80ae5f0a995e91ca3cd1bf372587e40311caa216))

## [1.4.0](https://github.com/gersonrs/modern-gitops-stack-module-cp-schema-registry/compare/v1.3.2...v1.4.0) (2026-05-20)


### 🚀 New Features

* migrate to Istio HTTPRoute ([#12](https://github.com/gersonrs/modern-gitops-stack-module-cp-schema-registry/issues/12)) ([e1accfc](https://github.com/gersonrs/modern-gitops-stack-module-cp-schema-registry/commit/e1accfce5322e9e66314031a91faa8656cb0aec2))


### 🔥 Bug Fixes

* update release-please workflow to use PROJECT_APP_PRIVATE_KEY secret ([#11](https://github.com/gersonrs/modern-gitops-stack-module-cp-schema-registry/issues/11)) ([0349f88](https://github.com/gersonrs/modern-gitops-stack-module-cp-schema-registry/commit/0349f88419d6d4c5ada0fa305b7438293969376f))

## [1.3.2](https://github.com/GersonRS/modern-gitops-stack-module-cp-schema-registry/compare/v1.3.1...v1.3.2) (2025-02-08)


### ⌨️ Code Refactoring

* adjust workflows ([3a34a07](https://github.com/GersonRS/modern-gitops-stack-module-cp-schema-registry/commit/3a34a07a3667ba0eaaca83302e1888e6431df600))
* try adjust code 5 ([8393573](https://github.com/GersonRS/modern-gitops-stack-module-cp-schema-registry/commit/83935737e51148a4f17c7392a82294fe9f4d350e))

## [1.3.1](https://github.com/GersonRS/modern-gitops-stack-module-cp-schema-registry/compare/v1.3.0...v1.3.1) (2025-02-08)


### ⌨️ Code Refactoring

* adjust workflows ([3223d9a](https://github.com/GersonRS/modern-gitops-stack-module-cp-schema-registry/commit/3223d9adeae9d9a1ace46db5ab40daf8a02e2035))

## [1.3.0](https://github.com/GersonRS/modern-gitops-stack-module-cp-schema-registry/compare/v1.2.0...v1.3.0) (2025-01-19)


### 🚀 New Features

* update project ([8c487ed](https://github.com/GersonRS/modern-gitops-stack-module-cp-schema-registry/commit/8c487ed1699d8450360807a56271725dbed183b3))

## [1.2.0](https://github.com/GersonRS/modern-gitops-stack-module-cp-schema-registry/compare/v1.1.0...v1.2.0) (2024-08-19)


### 🚀 New Features

* change namespace ([217ec17](https://github.com/GersonRS/modern-gitops-stack-module-cp-schema-registry/commit/217ec17bf7f3e671b223db248e24f09180614543))


### 📚 Documentation

* **terraform-docs:** generate docs and write to README.adoc ([750ad91](https://github.com/GersonRS/modern-gitops-stack-module-cp-schema-registry/commit/750ad91f9ed4dec226e61077777fa8e57a0601b3))

## [1.1.0](https://github.com/GersonRS/modern-gitops-stack-module-cp-schema-registry/compare/v1.0.0...v1.1.0) (2024-08-19)


### 🚀 New Features

* adjust repo ([865c172](https://github.com/GersonRS/modern-gitops-stack-module-cp-schema-registry/commit/865c1720132636e62afaf5f905508ea880d52e36))
* adjust repo ([9b97204](https://github.com/GersonRS/modern-gitops-stack-module-cp-schema-registry/commit/9b97204265b15ebb374e6e9c1abb573978f3a3c4))


### 📚 Documentation

* **terraform-docs:** generate docs and write to README.adoc ([43f1729](https://github.com/GersonRS/modern-gitops-stack-module-cp-schema-registry/commit/43f17299f2edaa4681511f2bff29b339c4f1c5bd))
