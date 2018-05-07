# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.Advisor.Api.GenerateRecommendations do
  @moduledoc """
  API calls for all endpoints tagged `GenerateRecommendations`.
  """

  alias Microsoft.Azure.Management.Preview.Advisor.Connection
  import Microsoft.Azure.Management.Preview.Advisor.RequestBuilder


  @doc """
  Initiates the recommendation generation or computation process for a subscription. This operation is asynchronous. The generated recommendations are stored in a cache in the Advisor service.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.Advisor.Connection): Connection to server
  - subscription_id (String.t): The Azure subscription ID.
  - api_version (String.t): The version of the API to be used with the client request.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec recommendations_generate(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def recommendations_generate(connection, subscription_id, api_version, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Advisor/generateRecommendations")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Retrieves the status of the recommendation computation or generation process. Invoke this API after calling the generation recommendation. The URI of this API is returned in the Location field of the response header.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.Advisor.Connection): Connection to server
  - subscription_id (String.t): The Azure subscription ID.
  - operation_id (String.t): The operation ID, which can be found from the Location field in the generate recommendation response header.
  - api_version (String.t): The version of the API to be used with the client request.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec recommendations_get_generate_recommendations_status(Tesla.Env.client, String.t, Microsoft.Azure.Management.Preview.Advisor.Model.String.t.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def recommendations_get_generate_recommendations_status(connection, subscription_id, operation_id, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Advisor/generateRecommendations/#{operation_id}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end
end
