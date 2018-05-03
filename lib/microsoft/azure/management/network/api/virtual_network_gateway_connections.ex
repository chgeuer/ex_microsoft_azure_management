# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Api.VirtualNetworkGatewayConnections do
  @moduledoc """
  API calls for all endpoints tagged `VirtualNetworkGatewayConnections`.
  """

  alias Microsoft.Azure.Management.Network.Connection
  import Microsoft.Azure.Management.Network.RequestBuilder


  @doc """
  Creates or updates a virtual network gateway connection in the specified resource group.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_connection_name (String.t): The name of the virtual network gateway connection.
  - parameters (VirtualNetworkGatewayConnection): Parameters supplied to the create or update virtual network gateway connection operation.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayConnection{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateway_connections_create_or_update(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayConnection.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayConnection.t} | {:error, Tesla.Env.t}
  def virtual_network_gateway_connections_create_or_update(connection, resource_group_name, virtual_network_gateway_connection_name, parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/connections/#{virtual_network_gateway_connection_name}")
    |> add_param(:body, :"parameters", parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayConnection{})
  end

  @doc """
  Deletes the specified virtual network Gateway connection.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_connection_name (String.t): The name of the virtual network gateway connection.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateway_connections_delete(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def virtual_network_gateway_connections_delete(connection, resource_group_name, virtual_network_gateway_connection_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/connections/#{virtual_network_gateway_connection_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Gets the specified virtual network gateway connection by resource group.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_connection_name (String.t): The name of the virtual network gateway connection.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayConnection{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateway_connections_get(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayConnection.t} | {:error, Tesla.Env.t}
  def virtual_network_gateway_connections_get(connection, resource_group_name, virtual_network_gateway_connection_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/connections/#{virtual_network_gateway_connection_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayConnection{})
  end

  @doc """
  The Get VirtualNetworkGatewayConnectionSharedKey operation retrieves information about the specified virtual network gateway connection shared key through Network resource provider.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_connection_name (String.t): The virtual network gateway connection shared key name.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.ConnectionSharedKey{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateway_connections_get_shared_key(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.ConnectionSharedKey.t} | {:error, Tesla.Env.t}
  def virtual_network_gateway_connections_get_shared_key(connection, resource_group_name, virtual_network_gateway_connection_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/connections/#{virtual_network_gateway_connection_name}/sharedkey")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.ConnectionSharedKey{})
  end

  @doc """
  The List VirtualNetworkGatewayConnections operation retrieves all the virtual network gateways connections created.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayConnectionListResult{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateway_connections_list(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayConnectionListResult.t} | {:error, Tesla.Env.t}
  def virtual_network_gateway_connections_list(connection, resource_group_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/connections")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayConnectionListResult{})
  end

  @doc """
  The VirtualNetworkGatewayConnectionResetSharedKey operation resets the virtual network gateway connection shared key for passed virtual network gateway connection in the specified resource group through Network resource provider.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_connection_name (String.t): The virtual network gateway connection reset shared key Name.
  - parameters (ConnectionResetSharedKey): Parameters supplied to the begin reset virtual network gateway connection shared key operation through network resource provider.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.ConnectionResetSharedKey{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateway_connections_reset_shared_key(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Network.Model.ConnectionResetSharedKey.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.ConnectionResetSharedKey.t} | {:error, Tesla.Env.t}
  def virtual_network_gateway_connections_reset_shared_key(connection, resource_group_name, virtual_network_gateway_connection_name, parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/connections/#{virtual_network_gateway_connection_name}/sharedkey/reset")
    |> add_param(:body, :"parameters", parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.ConnectionResetSharedKey{})
  end

  @doc """
  The Put VirtualNetworkGatewayConnectionSharedKey operation sets the virtual network gateway connection shared key for passed virtual network gateway connection in the specified resource group through Network resource provider.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_connection_name (String.t): The virtual network gateway connection name.
  - parameters (ConnectionSharedKey): Parameters supplied to the Begin Set Virtual Network Gateway connection Shared key operation throughNetwork resource provider.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.ConnectionSharedKey{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateway_connections_set_shared_key(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Network.Model.ConnectionSharedKey.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.ConnectionSharedKey.t} | {:error, Tesla.Env.t}
  def virtual_network_gateway_connections_set_shared_key(connection, resource_group_name, virtual_network_gateway_connection_name, parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/connections/#{virtual_network_gateway_connection_name}/sharedkey")
    |> add_param(:body, :"parameters", parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.ConnectionSharedKey{})
  end

  @doc """
  Updates a virtual network gateway connection tags.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - virtual_network_gateway_connection_name (String.t): The name of the virtual network gateway connection.
  - parameters (TagsObject): Parameters supplied to update virtual network gateway connection tags.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayConnectionListEntity{}} on success
  {:error, info} on failure
  """
  @spec virtual_network_gateway_connections_update_tags(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Network.Model.TagsObject.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayConnectionListEntity.t} | {:error, Tesla.Env.t}
  def virtual_network_gateway_connections_update_tags(connection, resource_group_name, virtual_network_gateway_connection_name, parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/connections/#{virtual_network_gateway_connection_name}")
    |> add_param(:body, :"parameters", parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.VirtualNetworkGatewayConnectionListEntity{})
  end
end