# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Network.Api.BgpServiceCommunities do
  @moduledoc """
  API calls for all endpoints tagged `BgpServiceCommunities`.
  """

  alias Microsoft.Azure.Management.Network.Connection
  import Microsoft.Azure.Management.Network.RequestBuilder


  @doc """
  Gets all the available bgp service communities.

  ## Parameters

  - connection (Microsoft.Azure.Management.Network.Connection): Connection to server
  - api_version (String.t): Client API version.
  - subscription_id (String.t): The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Network.Model.BgpServiceCommunityListResult{}} on success
  {:error, info} on failure
  """
  @spec bgp_service_communities_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Network.Model.BgpServiceCommunityListResult.t} | {:error, Tesla.Env.t}
  def bgp_service_communities_list(connection, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Network/bgpServiceCommunities")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Network.Model.BgpServiceCommunityListResult{})
  end
end