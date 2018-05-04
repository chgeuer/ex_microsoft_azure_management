# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Subscription.Api.SubscriptionDefinitions do
  @moduledoc """
  API calls for all endpoints tagged `SubscriptionDefinitions`.
  """

  alias Microsoft.Azure.Management.Subscription.Connection
  import Microsoft.Azure.Management.Subscription.RequestBuilder


  @doc """
  Create an Azure subscription definition.

  ## Parameters

  - connection (Microsoft.Azure.Management.Subscription.Connection): Connection to server
  - subscription_definition_name (String.t): The name of the Azure subscription definition.
  - api_version (String.t): Version of the API to be used with the client request. Current version is 2015-06-01
  - body (SubscriptionDefinition): The subscription definition creation.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Subscription.Model.SubscriptionDefinition{}} on success
  {:error, info} on failure
  """
  @spec subscription_definitions_create(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Subscription.Model.SubscriptionDefinition.t, keyword()) :: {:ok, Microsoft.Azure.Management.Subscription.Model.SubscriptionDefinition.t} | {:error, Tesla.Env.t}
  def subscription_definitions_create(connection, subscription_definition_name, api_version, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/providers/Microsoft.Subscription/subscriptionDefinitions/#{subscription_definition_name}")
    |> add_param(:query, :"api-version", api_version)
    |> add_param(:body, :"body", body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Subscription.Model.SubscriptionDefinition{})
  end

  @doc """
  Get an Azure subscription definition.

  ## Parameters

  - connection (Microsoft.Azure.Management.Subscription.Connection): Connection to server
  - subscription_definition_name (String.t): The name of the Azure subscription definition.
  - api_version (String.t): Version of the API to be used with the client request. Current version is 2015-06-01
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Subscription.Model.SubscriptionDefinition{}} on success
  {:error, info} on failure
  """
  @spec subscription_definitions_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Subscription.Model.SubscriptionDefinition.t} | {:error, Tesla.Env.t}
  def subscription_definitions_get(connection, subscription_definition_name, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/providers/Microsoft.Subscription/subscriptionDefinitions/#{subscription_definition_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Subscription.Model.SubscriptionDefinition{})
  end

  @doc """
  Retrieves the status of the subscription definition PUT operation. The URI of this API is returned in the Location field of the response header.

  ## Parameters

  - connection (Microsoft.Azure.Management.Subscription.Connection): Connection to server
  - api_version (String.t): Version of the API to be used with the client request. Current version is 2015-06-01
  - operation_id (String.t): The operation ID, which can be found from the Location field in the generate recommendation response header.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Subscription.Model.SubscriptionDefinition{}} on success
  {:error, info} on failure
  """
  @spec subscription_definitions_get_operation_status(Tesla.Env.client, String.t, Microsoft.Azure.Management.Subscription.Model.String.t.t, keyword()) :: {:ok, Microsoft.Azure.Management.Subscription.Model.SubscriptionDefinition.t} | {:error, Tesla.Env.t}
  def subscription_definitions_get_operation_status(connection, api_version, operation_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/providers/Microsoft.Subscription/subscriptionOperations/#{operation_id}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Subscription.Model.SubscriptionDefinition{})
  end

  @doc """
  List an Azure subscription definition by subscriptionId.

  ## Parameters

  - connection (Microsoft.Azure.Management.Subscription.Connection): Connection to server
  - api_version (String.t): Version of the API to be used with the client request. Current version is 2015-06-01
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Subscription.Model.SubscriptionDefinitionList{}} on success
  {:error, info} on failure
  """
  @spec subscription_definitions_list(Tesla.Env.client, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Subscription.Model.SubscriptionDefinitionList.t} | {:error, Tesla.Env.t}
  def subscription_definitions_list(connection, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/providers/Microsoft.Subscription/subscriptionDefinitions")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Subscription.Model.SubscriptionDefinitionList{})
  end

  @doc """
  Lists all of the available Microsoft.Subscription API operations.

  ## Parameters

  - connection (Microsoft.Azure.Management.Subscription.Connection): Connection to server
  - api_version (String.t): Version of the API to be used with the client request. Current version is 2015-06-01
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Subscription.Model.OperationListResult{}} on success
  {:error, info} on failure
  """
  @spec subscription_definitions_operation_metadata_list(Tesla.Env.client, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Subscription.Model.OperationListResult.t} | {:error, Tesla.Env.t}
  def subscription_definitions_operation_metadata_list(connection, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/providers/Microsoft.Subscription/operations")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Subscription.Model.OperationListResult{})
  end
end