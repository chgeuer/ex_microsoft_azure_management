# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Api.ExpressRouteCrossConnections do
  @moduledoc """
  API calls for all endpoints tagged `ExpressRouteCrossConnections`.
  """

  alias Microsoft.Azure.Management.Network.Connection
  import Microsoft.Azure.Management.Network.RequestBuilder


  @doc """
  Update the specified ExpressRouteCrossConnection.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - cross_connection_name (String.t): The name of the ExpressRouteCrossConnection.
  - parameters (ExpressRouteCrossConnection): Parameters supplied to the update express route crossConnection operation.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnection{}} on success
  {:error, info} on failure
  """
  @spec express_route_cross_connections_create_or_update(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnection.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnection.t} | {:error, Tesla.Env.t}
  def express_route_cross_connections_create_or_update(connection, resource_group_name, cross_connection_name, parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/expressRouteCrossConnections/#{cross_connection_name}")
    |> add_param(:body, :body, parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnection{})
  end

  @doc """
  Gets details about the specified ExpressRouteCrossConnection.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group (peering location of the circuit).
  - cross_connection_name (String.t): The name of the ExpressRouteCrossConnection (service key of the circuit).
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnection{}} on success
  {:error, info} on failure
  """
  @spec express_route_cross_connections_get(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnection.t} | {:error, Tesla.Env.t}
  def express_route_cross_connections_get(connection, resource_group_name, cross_connection_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/expressRouteCrossConnections/#{cross_connection_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnection{})
  end

  @doc """
  Retrieves all the ExpressRouteCrossConnections in a subscription.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnectionListResult{}} on success
  {:error, info} on failure
  """
  @spec express_route_cross_connections_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnectionListResult.t} | {:error, Tesla.Env.t}
  def express_route_cross_connections_list(connection, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Network/expressRouteCrossConnections")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnectionListResult{})
  end

  @doc """
  Retrieves all the ExpressRouteCrossConnections in a resource group.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnectionListResult{}} on success
  {:error, info} on failure
  """
  @spec express_route_cross_connections_list_by_resource_group(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnectionListResult.t} | {:error, Tesla.Env.t}
  def express_route_cross_connections_list_by_resource_group(connection, resource_group_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/expressRouteCrossConnections")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnectionListResult{})
  end

  @doc """
  Updates an express route cross connection tags.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - cross_connection_name (String.t): The name of the cross connection.
  - cross_connection_parameters (TagsObject): Parameters supplied to update express route cross connection tags.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnection{}} on success
  {:error, info} on failure
  """
  @spec express_route_cross_connections_update_tags(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Network.Model.TagsObject.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnection.t} | {:error, Tesla.Env.t}
  def express_route_cross_connections_update_tags(connection, resource_group_name, cross_connection_name, cross_connection_parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/expressRouteCrossConnections/#{cross_connection_name}")
    |> add_param(:body, :"crossConnectionParameters", cross_connection_parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.ExpressRouteCrossConnection{})
  end
end
