# SRE academy

Write a Chef cookbook which

- installs and configures [Node exporter](https://github.com/prometheus/node_exporter) [cookbook](https://supermarket.chef.io/cookbooks/prometheus_exporters)
- installs and configures [Prometheus](https://prometheus.io/) [cookbook](https://supermarket.chef.io/cookbooks/prometheus-platform) 
- Prometheus should [scrape metrics from Node exporter](https://prometheus.io/docs/guides/node-exporter/#configuring-your-prometheus-instances)
- installs and configures [Grafana](https://grafana.com/grafana) [cookbook](https://supermarket.chef.io/cookbooks/grafana) [cookbook source](https://github.com/sous-chefs/grafana/blob/master/documentation/grafana_install.md) [docs](https://grafana.com/docs/?pg=docs)
- Grafana should use Prometheus as a source and provide [dashboard for Node exporter](https://grafana.com/grafana/dashboards/13978)

Requirements: Cookbook should be kitchen testable. Use CentOS 7 for OS.

Below we provide a few cookbook examples for inspiration:

- https://github.com/vinted/chef-orchestrator
- https://github.com/vinted/chef-proxysql
- https://github.com/vinted/chef-vitess

# Getting started
This is just a draft cookbook to speed up development with chef.
Feel free to modify any part of cookbook (name, structure, versions, recipes, tests, etc.). You can also create new cookbook.
A guide how to setup [ChefDK](https://downloads.chef.io/products/chefdk), [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and create kitchen testable cookbook: https://kitchen.ci/docs/getting-started/introduction/

# Testing
The following tests should pass:
- [ ] Test Kitchen (`kitchen test`)
- [ ] Foodcritic (`foodcritic .`)
- [ ] Rubocop (`rubocop .`) or Cookstyle (`cookstyle .`)

# Usefull links

- [ChefDK download page](https://downloads.chef.io/products/chefdk)
- [Test Kitchen](https://kitchen.ci/)
- [Chef resources](https://docs.chef.io/resources/)
- [Inspec](https://community.chef.io/tools/chef-inspec/)
- [FoodCritic](http://www.foodcritic.io/)
- [Cookstyle](https://docs.chef.io/workstation/cookstyle/)
- [RuboCop](https://docs.rubocop.org/rubocop/)
- [Berkshelf](https://docs.chef.io/workstation/berkshelf/)
- [Markdown](https://guides.github.com/features/mastering-markdown/)

---
### Important
*Vinted, UAB collects, uses and stores your provided information to assess your suitability to enter into employment contract and suggest a job offer for you (we have the intention to enter into a contract with you (Art. 6 (1) (b) of GDPR). For more information on how Vinted, UAB uses your data and your rights, please see Vinted Job Applicant Privacy Policy available here: https://www.vinted.com/jobs/policy*

*By submitting the response to the given task, you hereby consent that Vinted, UAB shall have the right to reproduce and use the response that you submit for the purpose of its recruitment processes, which will be anonymised after your recruitment process.*
