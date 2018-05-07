# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.Addons.Api.Default do
  @moduledoc """
  API calls for all endpoints tagged `Default`.
  """

  alias Microsoft.Azure.Management.Preview.Addons.Connection
  import Microsoft.Azure.Management.Preview.Addons.RequestBuilder


  @doc """
  Cancels the Canonical support plan of type {type} for the subscription.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.Addons.Connection): Connection to server
  - api_version (String.t): Client API version.
  - subscription_id (String.t): Subscription credentials that uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - provider_name (String.t): The support plan type. For now the only valid type is \&quot;canonical\&quot;.
  - plan_type_name (String.t): The Canonical support plan type.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.Addons.Model.CanonicalSupportPlanResponseEnvelope{}} on success
  {:error, info} on failure
  """
  @spec support_plan_types_delete(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.Addons.Model.CanonicalSupportPlanResponseEnvelope.t} | {:error, Tesla.Env.t}
  def support_plan_types_delete(connection, api_version, subscription_id, provider_name, plan_type_name, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Addons/supportProviders/#{provider_name}/supportPlanTypes/#{plan_type_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.Addons.Model.CanonicalSupportPlanResponseEnvelope{})
  end
end
