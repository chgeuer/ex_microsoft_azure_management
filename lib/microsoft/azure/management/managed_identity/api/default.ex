# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.ManagedIdentity.Api.Default do
  @moduledoc """
  API calls for all endpoints tagged `Default`.
  """

  alias Microsoft.Azure.Management.ManagedIdentity.Connection
  import Microsoft.Azure.Management.ManagedIdentity.RequestBuilder


  @doc """
  Lists available operations for the Microsoft.ManagedIdentity provider

  ## Parameters

  - connection (Microsoft.Azure.Management.ManagedIdentity.Connection): Connection to server
  - api_version (String.t): Version of API to invoke.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.ManagedIdentity.Model.OperationListResult{}} on success
  {:error, info} on failure
  """
  @spec operations_list(Tesla.Env.client, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.ManagedIdentity.Model.OperationListResult.t} | {:error, Tesla.Env.t}
  def operations_list(connection, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/providers/Microsoft.ManagedIdentity/operations")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.ManagedIdentity.Model.OperationListResult{})
  end

  @doc """
  Create or update an identity in the specified subscription and resource group.

  ## Parameters

  - connection (Microsoft.Azure.Management.ManagedIdentity.Connection): Connection to server
  - subscription_id (String.t): The Id of the Subscription to which the identity belongs.
  - resource_group_name (String.t): The name of the Resource Group to which the identity belongs.
  - resource_name (String.t): The name of the identity resource.
  - api_version (String.t): Version of API to invoke.
  - parameters (Identity): Parameters to create or update the identity
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.ManagedIdentity.Model.Identity{}} on success
  {:error, info} on failure
  """
  @spec user_assigned_identities_create_or_update(Tesla.Env.client, String.t, String.t, String.t, String.t, Microsoft.Azure.Management.ManagedIdentity.Model.Identity.t, keyword()) :: {:ok, Microsoft.Azure.Management.ManagedIdentity.Model.Identity.t} | {:error, Tesla.Env.t}
  def user_assigned_identities_create_or_update(connection, subscription_id, resource_group_name, resource_name, api_version, parameters, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/#{resource_name}")
    |> add_param(:query, :"api-version", api_version)
    |> add_param(:body, :"parameters", parameters)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.ManagedIdentity.Model.Identity{})
  end

  @doc """
  Deletes the identity.

  ## Parameters

  - connection (Microsoft.Azure.Management.ManagedIdentity.Connection): Connection to server
  - subscription_id (String.t): The Id of the Subscription to which the identity belongs.
  - resource_group_name (String.t): The name of the Resource Group to which the identity belongs.
  - resource_name (String.t): The name of the identity resource.
  - api_version (String.t): Version of API to invoke.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec user_assigned_identities_delete(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def user_assigned_identities_delete(connection, subscription_id, resource_group_name, resource_name, api_version, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/#{resource_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Gets the identity.

  ## Parameters

  - connection (Microsoft.Azure.Management.ManagedIdentity.Connection): Connection to server
  - subscription_id (String.t): The Id of the Subscription to which the identity belongs.
  - resource_group_name (String.t): The name of the Resource Group to which the identity belongs.
  - resource_name (String.t): The name of the identity resource.
  - api_version (String.t): Version of API to invoke.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.ManagedIdentity.Model.Identity{}} on success
  {:error, info} on failure
  """
  @spec user_assigned_identities_get(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.ManagedIdentity.Model.Identity.t} | {:error, Tesla.Env.t}
  def user_assigned_identities_get(connection, subscription_id, resource_group_name, resource_name, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/#{resource_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.ManagedIdentity.Model.Identity{})
  end

  @doc """
  Lists all the userAssignedIdentities available under the specified ResourceGroup.

  ## Parameters

  - connection (Microsoft.Azure.Management.ManagedIdentity.Connection): Connection to server
  - subscription_id (String.t): The Id of the Subscription to which the identity belongs.
  - resource_group_name (String.t): The name of the Resource Group to which the identity belongs.
  - api_version (String.t): Version of API to invoke.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.ManagedIdentity.Model.UserAssignedIdentitiesListResult{}} on success
  {:error, info} on failure
  """
  @spec user_assigned_identities_list_by_resource_group(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.ManagedIdentity.Model.UserAssignedIdentitiesListResult.t} | {:error, Tesla.Env.t}
  def user_assigned_identities_list_by_resource_group(connection, subscription_id, resource_group_name, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.ManagedIdentity/userAssignedIdentities")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.ManagedIdentity.Model.UserAssignedIdentitiesListResult{})
  end

  @doc """
  Lists all the userAssignedIdentities available under the specified subscription.

  ## Parameters

  - connection (Microsoft.Azure.Management.ManagedIdentity.Connection): Connection to server
  - subscription_id (String.t): The Id of the Subscription to which the identity belongs.
  - api_version (String.t): Version of API to invoke.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.ManagedIdentity.Model.UserAssignedIdentitiesListResult{}} on success
  {:error, info} on failure
  """
  @spec user_assigned_identities_list_by_subscription(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.ManagedIdentity.Model.UserAssignedIdentitiesListResult.t} | {:error, Tesla.Env.t}
  def user_assigned_identities_list_by_subscription(connection, subscription_id, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.ManagedIdentity/userAssignedIdentities")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.ManagedIdentity.Model.UserAssignedIdentitiesListResult{})
  end

  @doc """
  Update an identity in the specified subscription and resource group.

  ## Parameters

  - connection (Microsoft.Azure.Management.ManagedIdentity.Connection): Connection to server
  - subscription_id (String.t): The Id of the Subscription to which the identity belongs.
  - resource_group_name (String.t): The name of the Resource Group to which the identity belongs.
  - resource_name (String.t): The name of the identity resource.
  - api_version (String.t): Version of API to invoke.
  - parameters (Identity): Parameters to update the identity
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.ManagedIdentity.Model.Identity{}} on success
  {:error, info} on failure
  """
  @spec user_assigned_identities_update(Tesla.Env.client, String.t, String.t, String.t, String.t, Microsoft.Azure.Management.ManagedIdentity.Model.Identity.t, keyword()) :: {:ok, Microsoft.Azure.Management.ManagedIdentity.Model.Identity.t} | {:error, Tesla.Env.t}
  def user_assigned_identities_update(connection, subscription_id, resource_group_name, resource_name, api_version, parameters, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/#{resource_name}")
    |> add_param(:query, :"api-version", api_version)
    |> add_param(:body, :"parameters", parameters)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.ManagedIdentity.Model.Identity{})
  end
end
