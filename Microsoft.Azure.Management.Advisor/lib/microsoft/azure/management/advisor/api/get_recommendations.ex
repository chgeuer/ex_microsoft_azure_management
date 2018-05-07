# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Advisor.Api.GetRecommendations do
  @moduledoc """
  API calls for all endpoints tagged `GetRecommendations`.
  """

  alias Microsoft.Azure.Management.Advisor.Connection
  import Microsoft.Azure.Management.Advisor.RequestBuilder


  @doc """
  Obtains details of a cached recommendation.

  ## Parameters

  - connection (Microsoft.Azure.Management.Advisor.Connection): Connection to server
  - resource_uri (String.t): The fully qualified Azure Resource Manager identifier of the resource to which the recommendation applies.
  - recommendation_id (String.t): The recommendation ID.
  - api_version (String.t): The version of the API to be used with the client request.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Advisor.Model.ResourceRecommendationBase{}} on success
  {:error, info} on failure
  """
  @spec recommendations_get(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Advisor.Model.ResourceRecommendationBase.t} | {:error, Tesla.Env.t}
  def recommendations_get(connection, resource_uri, recommendation_id, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{resource_uri}/providers/Microsoft.Advisor/recommendations/#{recommendation_id}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Advisor.Model.ResourceRecommendationBase{})
  end

  @doc """
  Obtains cached recommendations for a subscription. The recommendations are generated or computed by invoking generateRecommendations.

  ## Parameters

  - connection (Microsoft.Azure.Management.Advisor.Connection): Connection to server
  - subscription_id (String.t): The Azure subscription ID.
  - api_version (String.t): The version of the API to be used with the client request.
  - opts (KeywordList): [optional] Optional parameters
    - :__filter (String.t): The filter to apply to the recommendations.
    - :__top (integer()): The number of recommendations per page if a paged version of this API is being used.
    - :__skip_token (String.t): The page-continuation token to use with a paged version of this API.

  ## Returns

  {:ok, %Microsoft.Azure.Management.Advisor.Model.ResourceRecommendationBaseListResult{}} on success
  {:error, info} on failure
  """
  @spec recommendations_list(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Advisor.Model.ResourceRecommendationBaseListResult.t} | {:error, Tesla.Env.t}
  def recommendations_list(connection, subscription_id, api_version, opts \\ []) do
    optional_params = %{
      :"$filter" => :query,
      :"$top" => :query,
      :"$skipToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Advisor/recommendations")
    |> add_param(:query, :"api-version", api_version)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Advisor.Model.ResourceRecommendationBaseListResult{})
  end
end
