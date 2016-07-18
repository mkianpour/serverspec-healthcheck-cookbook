# serverspec-healthcheck Cookbook

Idea is to prepare a machine which is smart enough to check its own health and report it back as a web page.

Specifically, it would be helpful for load balancers. As Load Balancers check health of system and stop sending traffic if it's not healthy. This health check is usually done using a URL. The generated health check page can be used for this URL then. If self-check fails, it will return a 3xx status code, otherwise 200 status code.

Self health check can also be useful in continuous delivery and if check fails after deploy, deployer will be notified right away instead of asking the developer.

To achieve this goal, 'Serverspec' is being used. So, Serverspec will be installed on the instance. 'spec' files go to 'files' directory and healthcheck page will be generated based on it.

## Requirements

TODO: List your cookbook requirements. Be sure to include any requirements this cookbook has on platforms, libraries, other cookbooks, packages, operating systems, etc.

e.g.
### Platforms

- Ubuntu 14.04 or later
- 1024 MB of RAM to handle ruby2 install

### Chef

- Chef 12.0 or later

### Cookbooks

- `apt` - serverspec-healthcheck needs apt to do apt-get update.

## Attributes

TODO: List your cookbook attributes here.

e.g.
### serverspec-healthcheck::default

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['serverspec-healthcheck']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### serverspec-healthcheck::default

TODO: Write usage instructions for each cookbook.

e.g.
Just include `serverspec-healthcheck` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[serverspec-healthcheck]"
  ]
}
```

## Contributing

TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

## License and Authors

Authors: TODO: List authors

# serverspec-healthcheck-cookbook
