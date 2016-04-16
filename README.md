libsodium Cookbook
==================
Downloads, compiles, and installs libsodium.
Based off zeromq-cookbook by Johannes Plunien plu@pqpq.de.

Requirements
------------
#### packages
- `build-essential` - openbazaar needs build-essential for compiling

Platform
------------
* Tested on
  * Ubuntu 14.04

Attributes
----------
* node['libsodium']['base'] = '/usr/local'
* node['libsodium']['src'] = '/usr/local/src/libsodium'
* node['libsodium']['install_method'] = 'source'
* node['libsodium']['src_url'] = 'https://github.com/jedisct1/libsodium.git'
* node['libsodium']['version'] = '1.0.10'
* node['libsodium']['lib'] = 'libsodium.so'

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['libsodium']['base']</tt></td>
    <td>String</td>
    <td>Base directory for installing.</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['libsodium']['src']</tt></td>
    <td>String</td>
    <td>Directory for git cloning source into.</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['libsodium']['install_method']</tt></td>
    <td>String</td>
    <td>Method of installation.</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['libsodium']['src_url']</tt></td>
    <td>String</td>
    <td>Remote git repository URL.</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['libsodium']['version']</tt></td>
    <td>String</td>
    <td>Version to install. (git branch, or tags)</td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>['libsodium']['lib']</tt></td>
    <td>String</td>
    <td>The binary object name that is created.</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
Just include `libsodium` in your `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[libsodium]"
  ]
}
```

Or include it directly within another recipe:
```
include_recipe 'libsodium'
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Copyright 2016 Joshua C. Burt

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.