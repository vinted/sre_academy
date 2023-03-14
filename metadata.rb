name 'sre_academy'
maintainer 'Vinted SRE'
maintainer_email 'sre@vinted.com'
license 'MIT'
description 'SRE Academy'
version '0.1.0'
chef_version '>= 16'

source_url 'https://github.com/vinted/sre_academy'
issues_url 'https://github.com/vinted/sre_academy/issues'

supports 'centos'
supports 'redhat'
supports 'rocky'

depends 'prometheus_exporters', '~> 0.17.2'
depends 'grafana', '~> 10.2.6'
depends 'prometheus-platform', '~> 2.2.0'
