# ProvisionM

An example external provisioning source for OpenNMS.

## Installation

1. git clone
2. cd provisionm
3. bundle install
4. rake db:setup
5. foreman start

## Status

So this basically works, and it's for example. There's some things I plan on doing with it later.

## Use

Create some manufacturers, vendors, and locations. 
Then create a requisition. Then create your nodes.

When you've added the nodes to your requisition via the Node's edit screen, there will be a link to the requisition XML under the "requisition" link. This is what you want to have OpenNMS point to.
