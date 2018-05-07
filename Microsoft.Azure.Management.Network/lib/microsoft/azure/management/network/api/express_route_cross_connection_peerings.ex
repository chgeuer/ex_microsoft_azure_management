# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Api.ExpressRouteCrossConnectionPeerings do
  @moduledoc """
  API calls for all endpoints tagged `ExpressRouteCrossConnectionPeerings`.
  """

  alias Microsoft.Azure.Management.Network.Connection
  import Microsoft.Azure.Management.Network.RequestBuilder


  @doc """
  Creates or updates a peering in the specified ExpressRouteCrossConnection.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - cross_connection_name (String.t): The name of the ExpressRouteCrossConnection.
  - peering_name (String.t): The name of the peering.
  - peering_parameters (ExpressRouteCrossConnectionPeering): Parameters supplied to the create or update ExpressRouteCrossConnection peering operation.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnectionPeering{}} on success
  {:error, info} on failure
  """
  @spec express_route_cross_connection_peerings_create_or_update(Tesla.Env.client, String.t, String.t, String.t, Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnectionPeering.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnectionPeering.t} | {:error, Tesla.Env.t}
  def express_route_cross_connection_peerings_create_or_update(connection, resource_group_name, cross_connection_name, peering_name, peering_parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/expressRouteCrossConnections/#{cross_connection_name}/peerings/#{peering_name}")
    |> add_param(:body, :body, peering_parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnectionPeering{})
  end

  @doc """
  Deletes the specified peering from the ExpressRouteCrossConnection.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - cross_connection_name (String.t): The name of the ExpressRouteCrossConnection.
  - peering_name (String.t): The name of the peering.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec express_route_cross_connection_peerings_delete(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def express_route_cross_connection_peerings_delete(connection, resource_group_name, cross_connection_name, peering_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/expressRouteCrossConnections/#{cross_connection_name}/peerings/#{peering_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Gets the specified peering for the ExpressRouteCrossConnection.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - cross_connection_name (String.t): The name of the ExpressRouteCrossConnection.
  - peering_name (String.t): The name of the peering.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnectionPeering{}} on success
  {:error, info} on failure
  """
  @spec express_route_cross_connection_peerings_get(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnectionPeering.t} | {:error, Tesla.Env.t}
  def express_route_cross_connection_peerings_get(connection, resource_group_name, cross_connection_name, peering_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/expressRouteCrossConnections/#{cross_connection_name}/peerings/#{peering_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnectionPeering{})
  end

  @doc """
  Gets all peerings in a specified ExpressRouteCrossConnection.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - cross_connection_name (String.t): The name of the ExpressRouteCrossConnection.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnectionPeeringList{}} on success
  {:error, info} on failure
  """
  @spec express_route_cross_connection_peerings_list(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnectionPeeringList.t} | {:error, Tesla.Env.t}
  def express_route_cross_connection_peerings_list(connection, resource_group_name, cross_connection_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/expressRouteCrossConnections/#{cross_connection_name}/peerings")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnectionPeeringList{})
  end
end