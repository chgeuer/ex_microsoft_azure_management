# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.EventHub.Api.EventHubsClusterConfiguration do
  @moduledoc """
  API calls for all endpoints tagged `EventHubsClusterConfiguration`.
  """

  alias Microsoft.Azure.Management.Preview.EventHub.Connection
  import Microsoft.Azure.Management.Preview.EventHub.RequestBuilder


  @doc """
  Get all Event Hubs Cluster settings - a collection of key/value pairs which represent the quotas and settings imposed on the cluster.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.EventHub.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - resource_group_name (String.t): Name of the resource group within the Azure subscription.
  - cluster_name (String.t): The name of the Event Hubs Cluster.
  - api_version (String.t): Client API version.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.EventHub.Model.ClusterQuotaConfigurationProperties{}} on success
  {:error, info} on failure
  """
  @spec configuration_get(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.EventHub.Model.ClusterQuotaConfigurationProperties.t} | {:error, Tesla.Env.t}
  def configuration_get(connection, subscription_id, resource_group_name, cluster_name, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.EventHub/clusters/#{cluster_name}/quotaConfiguration/default")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.EventHub.Model.ClusterQuotaConfigurationProperties{})
  end

  @doc """
  Replace all specified Event Hubs Cluster settings with those contained in the request body. Leaves the settings not specified in the request body unmodified.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.EventHub.Connection): Connection to server
  - subscription_id (String.t): Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - resource_group_name (String.t): Name of the resource group within the Azure subscription.
  - cluster_name (String.t): The name of the Event Hubs Cluster.
  - api_version (String.t): Client API version.
  - parameters (ClusterQuotaConfigurationProperties): Parameters for creating an Event Hubs Cluster resource.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.EventHub.Model.ClusterQuotaConfigurationProperties{}} on success
  {:error, info} on failure
  """
  @spec configuration_patch(Tesla.Env.client, String.t, String.t, String.t, String.t, Microsoft.Azure.Management.Preview.EventHub.Model.ClusterQuotaConfigurationProperties.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.EventHub.Model.ClusterQuotaConfigurationProperties.t} | {:error, Tesla.Env.t}
  def configuration_patch(connection, subscription_id, resource_group_name, cluster_name, api_version, parameters, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.EventHub/clusters/#{cluster_name}/quotaConfiguration/default")
    |> add_param(:query, :"api-version", api_version)
    |> add_param(:body, :body, parameters)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.EventHub.Model.ClusterQuotaConfigurationProperties{})
  end
end