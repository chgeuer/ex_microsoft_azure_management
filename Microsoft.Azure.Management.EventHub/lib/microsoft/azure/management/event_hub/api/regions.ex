# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.EventHub.Api.Regions do
  @moduledoc """
  API calls for all endpoints tagged `Regions`.
  """

  alias Microsoft.Azure.Management.EventHub.Connection
  import Microsoft.Azure.Management.EventHub.RequestBuilder


  @doc """
  Gets the available Regions for a given sku

  ## Parameters

  - connection (Microsoft.Azure.Management.EventHub.Connection): Connection to server
  - api_version (String.t): Client API Version.
  - subscription_id (String.t): Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - sku (String.t): The sku type.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.EventHub.Model.MessagingRegionsListResult{}} on success
  {:error, info} on failure
  """
  @spec regions_list_by_sku(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.EventHub.Model.MessagingRegionsListResult.t} | {:error, Tesla.Env.t}
  def regions_list_by_sku(connection, api_version, subscription_id, sku, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.EventHub/sku/#{sku}/regions")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.EventHub.Model.MessagingRegionsListResult{})
  end
end
