# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Api.NetworkInterfaces do
  @moduledoc """
  API calls for all endpoints tagged `NetworkInterfaces`.
  """

  alias Microsoft.Azure.Management.Network.Connection
  import Microsoft.Azure.Management.Network.RequestBuilder


  @doc """
  Get the specified network interface ip configuration in a virtual machine scale set.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_machine_scale_set_name (String.t): The name of the virtual machine scale set.
  - virtualmachine_index (String.t): The virtual machine index.
  - network_interface_name (String.t): The name of the network interface.
  - ip_configuration_name (String.t): The name of the ip configuration.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters
    - :__expand (String.t): Expands referenced resources.

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.NetworkInterfaceIpConfiguration{}} on success
  {:error, info} on failure
  """
  @spec network_interfaces_get_virtual_machine_scale_set_ip_configuration(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.NetworkInterfaceIpConfiguration.t} | {:error, Tesla.Env.t}
  def network_interfaces_get_virtual_machine_scale_set_ip_configuration(connection, resource_group_name, virtual_machine_scale_set_name, virtualmachine_index, network_interface_name, ip_configuration_name, api_version, subscription_id, opts \\ []) do
    optional_params = %{
      :"$expand" => :query
    }
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/microsoft.Compute/virtualMachineScaleSets/#{virtual_machine_scale_set_name}/virtualMachines/#{virtualmachine_index}/networkInterfaces/#{network_interface_name}/ipConfigurations/#{ip_configuration_name}")
    |> add_param(:query, :"api-version", api_version)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.NetworkInterfaceIpConfiguration{})
  end

  @doc """
  Get the specified network interface in a virtual machine scale set.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_machine_scale_set_name (String.t): The name of the virtual machine scale set.
  - virtualmachine_index (String.t): The virtual machine index.
  - network_interface_name (String.t): The name of the network interface.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters
    - :__expand (String.t): Expands referenced resources.

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.NetworkInterface{}} on success
  {:error, info} on failure
  """
  @spec network_interfaces_get_virtual_machine_scale_set_network_interface(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.NetworkInterface.t} | {:error, Tesla.Env.t}
  def network_interfaces_get_virtual_machine_scale_set_network_interface(connection, resource_group_name, virtual_machine_scale_set_name, virtualmachine_index, network_interface_name, api_version, subscription_id, opts \\ []) do
    optional_params = %{
      :"$expand" => :query
    }
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/microsoft.Compute/virtualMachineScaleSets/#{virtual_machine_scale_set_name}/virtualMachines/#{virtualmachine_index}/networkInterfaces/#{network_interface_name}")
    |> add_param(:query, :"api-version", api_version)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.NetworkInterface{})
  end

  @doc """
  Get the specified network interface ip configuration in a virtual machine scale set.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_machine_scale_set_name (String.t): The name of the virtual machine scale set.
  - virtualmachine_index (String.t): The virtual machine index.
  - network_interface_name (String.t): The name of the network interface.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters
    - :__expand (String.t): Expands referenced resources.

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.NetworkInterfaceIpConfigurationListResult{}} on success
  {:error, info} on failure
  """
  @spec network_interfaces_list_virtual_machine_scale_set_ip_configurations(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.NetworkInterfaceIpConfigurationListResult.t} | {:error, Tesla.Env.t}
  def network_interfaces_list_virtual_machine_scale_set_ip_configurations(connection, resource_group_name, virtual_machine_scale_set_name, virtualmachine_index, network_interface_name, api_version, subscription_id, opts \\ []) do
    optional_params = %{
      :"$expand" => :query
    }
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/microsoft.Compute/virtualMachineScaleSets/#{virtual_machine_scale_set_name}/virtualMachines/#{virtualmachine_index}/networkInterfaces/#{network_interface_name}/ipConfigurations")
    |> add_param(:query, :"api-version", api_version)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.NetworkInterfaceIpConfigurationListResult{})
  end

  @doc """
  Gets all network interfaces in a virtual machine scale set.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_machine_scale_set_name (String.t): The name of the virtual machine scale set.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.NetworkInterfaceListResult{}} on success
  {:error, info} on failure
  """
  @spec network_interfaces_list_virtual_machine_scale_set_network_interfaces(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.NetworkInterfaceListResult.t} | {:error, Tesla.Env.t}
  def network_interfaces_list_virtual_machine_scale_set_network_interfaces(connection, resource_group_name, virtual_machine_scale_set_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/microsoft.Compute/virtualMachineScaleSets/#{virtual_machine_scale_set_name}/networkInterfaces")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.NetworkInterfaceListResult{})
  end

  @doc """
  Gets information about all network interfaces in a virtual machine in a virtual machine scale set.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_machine_scale_set_name (String.t): The name of the virtual machine scale set.
  - virtualmachine_index (String.t): The virtual machine index.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.NetworkInterfaceListResult{}} on success
  {:error, info} on failure
  """
  @spec network_interfaces_list_virtual_machine_scale_set_vm_network_interfaces(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.NetworkInterfaceListResult.t} | {:error, Tesla.Env.t}
  def network_interfaces_list_virtual_machine_scale_set_vm_network_interfaces(connection, resource_group_name, virtual_machine_scale_set_name, virtualmachine_index, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/microsoft.Compute/virtualMachineScaleSets/#{virtual_machine_scale_set_name}/virtualMachines/#{virtualmachine_index}/networkInterfaces")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.NetworkInterfaceListResult{})
  end
end
