# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Api.ExpressRouteCircuits do
  @moduledoc """
  API calls for all endpoints tagged `ExpressRouteCircuits`.
  """

  alias Microsoft.Azure.Management.Network.Connection
  import Microsoft.Azure.Management.Network.RequestBuilder


  @doc """
  Creates or updates an express route circuit.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - circuit_name (String.t): The name of the circuit.
  - parameters (ExpressRouteCircuit): Parameters supplied to the create or update express route circuit operation.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.ExpressRouteCircuit{}} on success
  {:error, info} on failure
  """
  @spec express_route_circuits_create_or_update(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Network.Model.ExpressRouteCircuit.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.ExpressRouteCircuit.t} | {:error, Tesla.Env.t}
  def express_route_circuits_create_or_update(connection, resource_group_name, circuit_name, parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/expressRouteCircuits/#{circuit_name}")
    |> add_param(:body, :"parameters", parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.ExpressRouteCircuit{})
  end

  @doc """
  Deletes the specified express route circuit.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - circuit_name (String.t): The name of the express route circuit.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec express_route_circuits_delete(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def express_route_circuits_delete(connection, resource_group_name, circuit_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/expressRouteCircuits/#{circuit_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Gets information about the specified express route circuit.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - circuit_name (String.t): The name of express route circuit.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.ExpressRouteCircuit{}} on success
  {:error, info} on failure
  """
  @spec express_route_circuits_get(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.ExpressRouteCircuit.t} | {:error, Tesla.Env.t}
  def express_route_circuits_get(connection, resource_group_name, circuit_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/expressRouteCircuits/#{circuit_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.ExpressRouteCircuit{})
  end

  @doc """
  Gets all the express route circuits in a resource group.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.ExpressRouteCircuitListResult{}} on success
  {:error, info} on failure
  """
  @spec express_route_circuits_list(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.ExpressRouteCircuitListResult.t} | {:error, Tesla.Env.t}
  def express_route_circuits_list(connection, resource_group_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/expressRouteCircuits")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.ExpressRouteCircuitListResult{})
  end

  @doc """
  Gets all the express route circuits in a subscription.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.ExpressRouteCircuitListResult{}} on success
  {:error, info} on failure
  """
  @spec express_route_circuits_list_all(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.ExpressRouteCircuitListResult.t} | {:error, Tesla.Env.t}
  def express_route_circuits_list_all(connection, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Network/expressRouteCircuits")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.ExpressRouteCircuitListResult{})
  end

  @doc """
  Updates an express route circuit tags.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group.
  - circuit_name (String.t): The name of the circuit.
  - parameters (TagsObject): Parameters supplied to update express route circuit tags.
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.ExpressRouteCircuit{}} on success
  {:error, info} on failure
  """
  @spec express_route_circuits_update_tags(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Network.Model.TagsObject.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.ExpressRouteCircuit.t} | {:error, Tesla.Env.t}
  def express_route_circuits_update_tags(connection, resource_group_name, circuit_name, parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Network/expressRouteCircuits/#{circuit_name}")
    |> add_param(:body, :"parameters", parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.ExpressRouteCircuit{})
  end
end
