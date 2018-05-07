# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Api.VirtualNetworkPeerings do
  @moduledoc """
  API calls for all endpoints tagged `VirtualNetworkPeerings`.
  """

  alias Microsoft.Azure.Management.Network.Connection
  import Microsoft.Azure.Management.Network.RequestBuilder


  @doc """
  Creates or updates a peering in the specified virtual network.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_name (String.t): The name of the virtual network.
  - virtual_network_peering_name (String.t): The name of the peering.
  - virtual_network_peering_parameters (VirtualNetworkPeering): Parameters supplied to the create or update virtual network peering operation.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.VirtualNetworkPeering{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_peerings_create_or_update(Tesla.Env.client, String.t, String.t, String.t, Microsoft.Azure.Management.Network.Model.VirtualNetworkPeering.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.VirtualNetworkPeering.t} | {:error, Tesla.Env.t}
  def virtual_network_peerings_create_or_update(connection, resource_group_name, virtual_network_name, virtual_network_peering_name, virtual_network_peering_parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/virtualNetworks/#{virtual_network_name}/virtualNetworkPeerings/#{virtual_network_peering_name}")
    |> add_param(:body, :body, virtual_network_peering_parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.VirtualNetworkPeering{})
  end

  @doc """
  Deletes the specified virtual network peering.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_name (String.t): The name of the virtual network.
  - virtual_network_peering_name (String.t): The name of the virtual network peering.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_peerings_delete(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def virtual_network_peerings_delete(connection, resource_group_name, virtual_network_name, virtual_network_peering_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/virtualNetworks/#{virtual_network_name}/virtualNetworkPeerings/#{virtual_network_peering_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Gets the specified virtual network peering.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_name (String.t): The name of the virtual network.
  - virtual_network_peering_name (String.t): The name of the virtual network peering.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.VirtualNetworkPeering{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_peerings_get(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.VirtualNetworkPeering.t} | {:error, Tesla.Env.t}
  def virtual_network_peerings_get(connection, resource_group_name, virtual_network_name, virtual_network_peering_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/virtualNetworks/#{virtual_network_name}/virtualNetworkPeerings/#{virtual_network_peering_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.VirtualNetworkPeering{})
  end

  @doc """
  Gets all virtual network peerings in a virtual network.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_name (String.t): The name of the virtual network.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.VirtualNetworkPeeringListResult{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_peerings_list(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.VirtualNetworkPeeringListResult.t} | {:error, Tesla.Env.t}
  def virtual_network_peerings_list(connection, resource_group_name, virtual_network_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/virtualNetworks/#{virtual_network_name}/virtualNetworkPeerings")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.VirtualNetworkPeeringListResult{})
  end
end