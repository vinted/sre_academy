# SRE academy homework

Write a Chef cookbook which

* installs and configures [Node exporter](https://github.com/prometheus/node_exporter) [cookbook](https://supermarket.chef.io/cookbooks/prometheus_exporters)
* installs and configures [Prometheus](https://prometheus.io/) [cookbook](https://supermarket.chef.io/cookbooks/prometheus-platform)
* Prometheus should [scrape metrics from Node exporter](https://prometheus.io/docs/guides/node-exporter/#configuring-your-prometheus-instances)
* installs and configures [Grafana](https://grafana.com/grafana) [cookbook](https://supermarket.chef.io/cookbooks/grafana) [cookbook source](https://github.com/sous-chefs/grafana/blob/master/documentation/grafana_install.md) [docs](https://grafana.com/docs/?pg=docs)
* Grafana should use Prometheus as a source and provide [dashboard for Node exporter](https://grafana.com/grafana/dashboards/13978)

## Requirements

* Cookbook should be kitchen testable
* Use Rocky Linux 8 as TestKitchen platform
* Prefer native Chef resources, instead of using `execute` blocks

## Getting started

This is a draft cookbook to speed up development with Chef. Feel free to modify any part of cookbook (name, structure, versions, recipes, tests, etc.).

### Development setup

MacOS prerequisites:

* install [brew](https://brew.sh/)
* install [Docker Desktop](https://docs.docker.com/desktop/install/mac-install/)
* install rbenv `brew install rbenv` and reload shell
* install `brew install yajl`
* workaround until <https://github.com/chef/ffi-yajl/pull/114> is released, needed for XCode 14

  ```bash
  bundle config build.ffi-yajl --with-ldflags="-Wl,-undefined,dynamic_lookup"
  ```

* remove file `~/.docker/config.json` or add empty `auths` hash to it: `{ <...> "auths": {} <...> }`

Linux system prerequisites:

* [install rbenv](https://github.com/rbenv/rbenv#installation)
* install [Docker Community Edition Engine](https://docs.docker.com/engine/install/#server)

Setup Homework environment, use one of the two ways:

1. (Preferred) Setup with [rbenv](https://github.com/rbenv/rbenv), install depends on platform
   * [install rbenv](https://github.com/rbenv/rbenv#installation) and initialize shell with `rbenv init` instructions
   * install required ruby `rbenv install 3.1.2`
   * upgrade bundler `bundle update --bundler`
   * install gems `bundle install`
1. Install [Cinc Workstation](https://cinc.sh/start/workstation/). Depending on Workstation version, tools might be different and not work as expected. Note: `bundle exec` part changes to `chef exec`.

### Development notes

* TestKitchen setting `enforce_idempotency` fails second converge if resources change again, you can disable this during developemnt.
* To explore or debug on target machine, use `bundle exec kitchen login`.

## Cookbook examples

Use [sous-chefs](https://github.com/sous-chefs) community cookbooks for inspiration:

* <https://github.com/sous-chefs/vim>
* <https://github.com/sous-chefs/logrotate>
* <https://github.com/sous-chefs/jenkins>

## Testing

The following tests should pass:

* [x] Test Kitchen (`rake test:kitchen` or `kitchen test`)
* [x] Cookstyle (`rake test:cookstyle` or `cookstyle .`)
* [x] MarkdownLint (`rake test:mdl` or `mdl README.md documentation/`)

Use `rake test` to run full test suite.

## Useful links

References

* [Chef resources](https://docs.chef.io/resources/)
* [InSpec resources](https://www.inspec.io/docs/reference/resources/)
* [ChefSpec](https://docs.chef.io/workstation/chefspec)
* [Kitchen configuration file](https://docs.chef.io/workstation/config_yml_kitchen/)
* [kitchen-dokken plugin](https://github.com/test-kitchen/kitchen-dokken)
* [kitchen.ci dokken pages](https://kitchen.ci/docs/drivers/dokken/)
* [Markdown](https://guides.github.com/features/mastering-markdown/)
* [MDL lint rules](https://github.com/markdownlint/markdownlint/blob/master/docs/RULES.md)

Software

* [rbenv](https://github.com/rbenv/rbenv)
* [Cinc Workstation](https://cinc.sh/start/workstation/)
* [Docker hub](https://hub.docker.com/)

---

## Important

Vinted, UAB collects, uses and stores your provided information to assess your suitability to enter into employment contract and suggest a job offer for you (we have the intention to enter into a contract with you (Art. 6 (1) (b) of GDPR). For more information on how Vinted, UAB uses your data and your rights, please see Vinted Job Applicant Privacy Policy available here: <https://www.vinted.com/jobs/policy>

By submitting the response to the given task, you hereby consent that Vinted, UAB shall have the right to reproduce and use the response that you submit for the purpose of its recruitment processes, which will be anonymised after your recruitment process.
