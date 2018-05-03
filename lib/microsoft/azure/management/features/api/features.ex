# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Features.Api.Features do
  @moduledoc """
  API calls for all endpoints tagged `Features`.
  """

  alias Microsoft.Azure.Management.Features.Connection
  import Microsoft.Azure.Management.Features.RequestBuilder


  @doc """
  Gets the preview feature with the specified name.

  ## Parameters

  - connection (Microsoft.Azure.Management.Features.Connection): Connection to server
  - resource_provider_namespace (String.t): The resource provider namespace for the feature.
  - feature_name (String.t): The name of the feature to get.
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Features.Model.FeatureResult{}} on success
  {:error, info} on failure
  """
  @spec features_get(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Features.Model.FeatureResult.t} | {:error, Tesla.Env.t}
  def features_get(connection, resource_provider_namespace, feature_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Features/providers/#{resource_provider_namespace}/features/#{feature_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Features.Model.FeatureResult{})
  end

  @doc """
  Gets all the preview features in a provider namespace that are available through AFEC for the subscription.

  ## Parameters

  - connection (Microsoft.Azure.Management.Features.Connection): Connection to server
  - resource_provider_namespace (String.t): The namespace of the resource provider for getting features.
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Features.Model.FeatureOperationsListResult{}} on success
  {:error, info} on failure
  """
  @spec features_list(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Features.Model.FeatureOperationsListResult.t} | {:error, Tesla.Env.t}
  def features_list(connection, resource_provider_namespace, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Features/providers/#{resource_provider_namespace}/features")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Features.Model.FeatureOperationsListResult{})
  end

  @doc """
  Gets all the preview features that are available through AFEC for the subscription.

  ## Parameters

  - connection (Microsoft.Azure.Management.Features.Connection): Connection to server
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Features.Model.FeatureOperationsListResult{}} on success
  {:error, info} on failure
  """
  @spec features_list_all(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Features.Model.FeatureOperationsListResult.t} | {:error, Tesla.Env.t}
  def features_list_all(connection, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Features/features")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Features.Model.FeatureOperationsListResult{})
  end

  @doc """
  Registers the preview feature for the subscription.

  ## Parameters

  - connection (Microsoft.Azure.Management.Features.Connection): Connection to server
  - resource_provider_namespace (String.t): The namespace of the resource provider.
  - feature_name (String.t): The name of the feature to register.
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Features.Model.FeatureResult{}} on success
  {:error, info} on failure
  """
  @spec features_register(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Features.Model.FeatureResult.t} | {:error, Tesla.Env.t}
  def features_register(connection, resource_provider_namespace, feature_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Features/providers/#{resource_provider_namespace}/features/#{feature_name}/register")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Features.Model.FeatureResult{})
  end
end
