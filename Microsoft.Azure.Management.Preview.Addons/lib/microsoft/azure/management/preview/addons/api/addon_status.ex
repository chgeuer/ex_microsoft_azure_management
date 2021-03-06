# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.Addons.Api.AddonStatus do
  @moduledoc """
  API calls for all endpoints tagged `AddonStatus`.
  """

  alias Microsoft.Azure.Management.Preview.Addons.Connection
  import Microsoft.Azure.Management.Preview.Addons.RequestBuilder


  @doc """
  Returns the canonical support plan information for all types for the subscription.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.Addons.Connection): Connection to server
  - api_version (String.t): Client API version.
  - subscription_id (String.t): Subscription credentials that uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.Addons.Model.CanonicalSupportPlanInfo{}} on success
  {:error, info} on failure
  """
  @spec support_plan_types_list_info(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.Addons.Model.CanonicalSupportPlanInfo.t} | {:error, Tesla.Env.t}
  def support_plan_types_list_info(connection, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Addons/supportProviders/canonical/listSupportPlanInfo")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.Addons.Model.CanonicalSupportPlanInfo{})
  end
end
