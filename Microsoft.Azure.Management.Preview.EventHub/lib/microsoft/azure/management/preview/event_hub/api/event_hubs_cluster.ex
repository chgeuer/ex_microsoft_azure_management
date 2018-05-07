# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.EventHub.Api.EventHubsCluster do
  @moduledoc """
  API calls for all endpoints tagged `EventHubsCluster`.
  """

  alias Microsoft.Azure.Management.Preview.EventHub.Connection
  import Microsoft.Azure.Management.Preview.EventHub.RequestBuilder


  @doc """
  Gets the resource description of the specified Event Hubs Cluster.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.EventHub.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - resource_group_name (String.t): Name of the resource group within the Azure subscription.
  - cluster_name (String.t): The name of the Event Hubs Cluster.
  - api_version (String.t): Client API version.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.EventHub.Model.Cluster{}} on success
  {:error, info} on failure
  """
  @spec clusters_get(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.EventHub.Model.Cluster.t} | {:error, Tesla.Env.t}
  def clusters_get(connection, subscription_id, resource_group_name, cluster_name, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.EventHub/clusters/#{cluster_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.EventHub.Model.Cluster{})
  end

  @doc """
  Modifies mutable properties on the Event Hubs Cluster. This operation is idempotent.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.EventHub.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - resource_group_name (String.t): Name of the resource group within the Azure subscription.
  - cluster_name (String.t): The name of the Event Hubs Cluster.
  - api_version (String.t): Client API version.
  - parameters (Cluster): The properties of the Event Hubs Cluster which should be updated.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.EventHub.Model.Cluster{}} on success
  {:error, info} on failure
  """
  @spec clusters_patch(Tesla.Env.client, String.t, String.t, String.t, String.t, Microsoft.Azure.Management.Preview.EventHub.Model.Cluster.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.EventHub.Model.Cluster.t} | {:error, Tesla.Env.t}
  def clusters_patch(connection, subscription_id, resource_group_name, cluster_name, api_version, parameters, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.EventHub/clusters/#{cluster_name}")
    |> add_param(:query, :"api-version", api_version)
    |> add_param(:body, :body, parameters)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.EventHub.Model.Cluster{})
  end
end