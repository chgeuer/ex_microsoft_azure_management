# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Api.LogAnalytics do
  @moduledoc """
  API calls for all endpoints tagged `LogAnalytics`.
  """

  alias Microsoft.Azure.Management.Compute.Connection
  import Microsoft.Azure.Management.Compute.RequestBuilder


  @doc """
  Export logs that show Api requests made by this subscription in the given time window to show throttling activities.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - parameters (RequestRateByIntervalInput): Parameters supplied to the LogAnalytics getRequestRateByInterval Api.
  - location (String.t): The location upon which virtual-machine-sizes is queried.
  - api_version (String.t): Client Api Version.
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Compute.Model.LogAnalyticsOperationResult{}} on success
  {:error, info} on failure
  """
  @spec log_analytics_export_request_rate_by_interval(Tesla.Env.client, Microsoft.Azure.Management.Compute.Model.RequestRateByIntervalInput.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Compute.Model.LogAnalyticsOperationResult.t} | {:error, Tesla.Env.t}
  def log_analytics_export_request_rate_by_interval(connection, parameters, location, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Compute/locations/#{location}/logAnalytics/apiAccess/getRequestRateByInterval")
    |> add_param(:body, :body, parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Compute.Model.LogAnalyticsOperationResult{})
  end

  @doc """
  Export logs that show total throttled Api requests for this subscription in the given time window.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - parameters (ThrottledRequestsInput): Parameters supplied to the LogAnalytics getThrottledRequests Api.
  - location (String.t): The location upon which virtual-machine-sizes is queried.
  - api_version (String.t): Client Api Version.
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Compute.Model.LogAnalyticsOperationResult{}} on success
  {:error, info} on failure
  """
  @spec log_analytics_export_throttled_requests(Tesla.Env.client, Microsoft.Azure.Management.Compute.Model.ThrottledRequestsInput.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Compute.Model.LogAnalyticsOperationResult.t} | {:error, Tesla.Env.t}
  def log_analytics_export_throttled_requests(connection, parameters, location, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Compute/locations/#{location}/logAnalytics/apiAccess/getThrottledRequests")
    |> add_param(:body, :body, parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Compute.Model.LogAnalyticsOperationResult{})
  end
end
