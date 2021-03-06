# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Authorization.Api.ManagementLocks do
  @moduledoc """
  API calls for all endpoints tagged `ManagementLocks`.
  """

  alias Microsoft.Azure.Management.Authorization.Connection
  import Microsoft.Azure.Management.Authorization.RequestBuilder


  @doc """
  Creates or updates a management lock at the resource group level.
  When you apply a lock at a parent scope, all child resources inherit the same lock. To create management locks, you must have access to Microsoft.Authorization/* or Microsoft.Authorization/locks/* actions. Of the built-in roles, only Owner and User Access Administrator are granted those actions.

  ## Parameters

  - connection (Microsoft.Azure.Management.Authorization.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group to lock.
  - lock_name (String.t): The lock name. The lock name can be a maximum of 260 characters. It cannot contain &lt;, &gt; %, &amp;, :, \\, ?, /, or any control characters.
  - parameters (ManagementLockObject): The management lock parameters.
  - api_version (String.t): The API version to use for the operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Authorization.Model.ManagementLockObject{}} on success
  {:error, info} on failure
  """
  @spec management_locks_create_or_update_at_resource_group_level(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Authorization.Model.ManagementLockObject.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Authorization.Model.ManagementLockObject.t} | {:error, Tesla.Env.t}
  def management_locks_create_or_update_at_resource_group_level(connection, resource_group_name, lock_name, parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Authorization/locks/#{lock_name}")
    |> add_param(:body, :body, parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Authorization.Model.ManagementLockObject{})
  end

  @doc """
  Creates or updates a management lock at the resource level or any level below the resource.
  When you apply a lock at a parent scope, all child resources inherit the same lock. To create management locks, you must have access to Microsoft.Authorization/* or Microsoft.Authorization/locks/* actions. Of the built-in roles, only Owner and User Access Administrator are granted those actions.

  ## Parameters

  - connection (Microsoft.Azure.Management.Authorization.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group containing the resource to lock. 
  - resource_provider_namespace (String.t): The resource provider namespace of the resource to lock.
  - parent_resource_path (String.t): The parent resource identity.
  - resource_type (String.t): The resource type of the resource to lock.
  - resource_name (String.t): The name of the resource to lock.
  - lock_name (String.t): The name of lock. The lock name can be a maximum of 260 characters. It cannot contain &lt;, &gt; %, &amp;, :, \\, ?, /, or any control characters.
  - parameters (ManagementLockObject): Parameters for creating or updating a  management lock.
  - api_version (String.t): The API version to use for the operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Authorization.Model.ManagementLockObject{}} on success
  {:error, info} on failure
  """
  @spec management_locks_create_or_update_at_resource_level(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, String.t, Microsoft.Azure.Management.Authorization.Model.ManagementLockObject.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Authorization.Model.ManagementLockObject.t} | {:error, Tesla.Env.t}
  def management_locks_create_or_update_at_resource_level(connection, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, lock_name, parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/subscriptions/#{subscription_id}/resourcegroups/#{resource_group_name}/providers/#{resource_provider_namespace}/#{parent_resource_path}/#{resource_type}/#{resource_name}/providers/Microsoft.Authorization/locks/#{lock_name}")
    |> add_param(:body, :body, parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Authorization.Model.ManagementLockObject{})
  end

  @doc """
  Creates or updates a management lock at the subscription level.
  When you apply a lock at a parent scope, all child resources inherit the same lock. To create management locks, you must have access to Microsoft.Authorization/* or Microsoft.Authorization/locks/* actions. Of the built-in roles, only Owner and User Access Administrator are granted those actions.

  ## Parameters

  - connection (Microsoft.Azure.Management.Authorization.Connection): Connection to server
  - lock_name (String.t): The name of lock. The lock name can be a maximum of 260 characters. It cannot contain &lt;, &gt; %, &amp;, :, \\, ?, /, or any control characters.
  - parameters (ManagementLockObject): The management lock parameters.
  - api_version (String.t): The API version to use for the operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Authorization.Model.ManagementLockObject{}} on success
  {:error, info} on failure
  """
  @spec management_locks_create_or_update_at_subscription_level(Tesla.Env.client, String.t, Microsoft.Azure.Management.Authorization.Model.ManagementLockObject.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Authorization.Model.ManagementLockObject.t} | {:error, Tesla.Env.t}
  def management_locks_create_or_update_at_subscription_level(connection, lock_name, parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Authorization/locks/#{lock_name}")
    |> add_param(:body, :body, parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Authorization.Model.ManagementLockObject{})
  end

  @doc """
  Create or update a management lock by scope.

  ## Parameters

  - connection (Microsoft.Azure.Management.Authorization.Connection): Connection to server
  - scope (String.t): The scope for the lock. When providing a scope for the assignment, use &#39;/subscriptions/{subscriptionId}&#39; for subscriptions, &#39;/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}&#39; for resource groups, and &#39;/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{parentResourcePathIfPresent}/{resourceType}/{resourceName}&#39; for resources.
  - lock_name (String.t): The name of lock.
  - parameters (ManagementLockObject): Create or update management lock parameters.
  - api_version (String.t): The API version to use for the operation.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Authorization.Model.ManagementLockObject{}} on success
  {:error, info} on failure
  """
  @spec management_locks_create_or_update_by_scope(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Authorization.Model.ManagementLockObject.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Authorization.Model.ManagementLockObject.t} | {:error, Tesla.Env.t}
  def management_locks_create_or_update_by_scope(connection, scope, lock_name, parameters, api_version, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/#{scope}/providers/Microsoft.Authorization/locks/#{lock_name}")
    |> add_param(:body, :body, parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Authorization.Model.ManagementLockObject{})
  end

  @doc """
  Deletes a management lock at the resource group level.
  To delete management locks, you must have access to Microsoft.Authorization/* or Microsoft.Authorization/locks/* actions. Of the built-in roles, only Owner and User Access Administrator are granted those actions.

  ## Parameters

  - connection (Microsoft.Azure.Management.Authorization.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group containing the lock.
  - lock_name (String.t): The name of lock to delete.
  - api_version (String.t): The API version to use for the operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec management_locks_delete_at_resource_group_level(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def management_locks_delete_at_resource_group_level(connection, resource_group_name, lock_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Authorization/locks/#{lock_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Deletes the management lock of a resource or any level below the resource.
  To delete management locks, you must have access to Microsoft.Authorization/* or Microsoft.Authorization/locks/* actions. Of the built-in roles, only Owner and User Access Administrator are granted those actions.

  ## Parameters

  - connection (Microsoft.Azure.Management.Authorization.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group containing the resource with the lock to delete. 
  - resource_provider_namespace (String.t): The resource provider namespace of the resource with the lock to delete.
  - parent_resource_path (String.t): The parent resource identity.
  - resource_type (String.t): The resource type of the resource with the lock to delete.
  - resource_name (String.t): The name of the resource with the lock to delete.
  - lock_name (String.t): The name of the lock to delete.
  - api_version (String.t): The API version to use for the operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec management_locks_delete_at_resource_level(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def management_locks_delete_at_resource_level(connection, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, lock_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/subscriptions/#{subscription_id}/resourcegroups/#{resource_group_name}/providers/#{resource_provider_namespace}/#{parent_resource_path}/#{resource_type}/#{resource_name}/providers/Microsoft.Authorization/locks/#{lock_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Deletes the management lock at the subscription level.
  To delete management locks, you must have access to Microsoft.Authorization/* or Microsoft.Authorization/locks/* actions. Of the built-in roles, only Owner and User Access Administrator are granted those actions.

  ## Parameters

  - connection (Microsoft.Azure.Management.Authorization.Connection): Connection to server
  - lock_name (String.t): The name of lock to delete.
  - api_version (String.t): The API version to use for the operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec management_locks_delete_at_subscription_level(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def management_locks_delete_at_subscription_level(connection, lock_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Authorization/locks/#{lock_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Delete a management lock by scope.

  ## Parameters

  - connection (Microsoft.Azure.Management.Authorization.Connection): Connection to server
  - scope (String.t): The scope for the lock. 
  - lock_name (String.t): The name of lock.
  - api_version (String.t): The API version to use for the operation.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec management_locks_delete_by_scope(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def management_locks_delete_by_scope(connection, scope, lock_name, api_version, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/#{scope}/providers/Microsoft.Authorization/locks/#{lock_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Gets a management lock at the resource group level.

  ## Parameters

  - connection (Microsoft.Azure.Management.Authorization.Connection): Connection to server
  - resource_group_name (String.t): The name of the locked resource group.
  - lock_name (String.t): The name of the lock to get.
  - api_version (String.t): The API version to use for the operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Authorization.Model.ManagementLockObject{}} on success
  {:error, info} on failure
  """
  @spec management_locks_get_at_resource_group_level(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Authorization.Model.ManagementLockObject.t} | {:error, Tesla.Env.t}
  def management_locks_get_at_resource_group_level(connection, resource_group_name, lock_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Authorization/locks/#{lock_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Authorization.Model.ManagementLockObject{})
  end

  @doc """
  Get the management lock of a resource or any level below resource.

  ## Parameters

  - connection (Microsoft.Azure.Management.Authorization.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group. 
  - resource_provider_namespace (String.t): The namespace of the resource provider.
  - parent_resource_path (String.t): An extra path parameter needed in some services, like SQL Databases.
  - resource_type (String.t): The type of the resource.
  - resource_name (String.t): The name of the resource.
  - lock_name (String.t): The name of lock.
  - api_version (String.t): The API version to use for the operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Authorization.Model.ManagementLockObject{}} on success
  {:error, info} on failure
  """
  @spec management_locks_get_at_resource_level(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Authorization.Model.ManagementLockObject.t} | {:error, Tesla.Env.t}
  def management_locks_get_at_resource_level(connection, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, lock_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourcegroups/#{resource_group_name}/providers/#{resource_provider_namespace}/#{parent_resource_path}/#{resource_type}/#{resource_name}/providers/Microsoft.Authorization/locks/#{lock_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Authorization.Model.ManagementLockObject{})
  end

  @doc """
  Gets a management lock at the subscription level.

  ## Parameters

  - connection (Microsoft.Azure.Management.Authorization.Connection): Connection to server
  - lock_name (String.t): The name of the lock to get.
  - api_version (String.t): The API version to use for the operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Authorization.Model.ManagementLockObject{}} on success
  {:error, info} on failure
  """
  @spec management_locks_get_at_subscription_level(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Authorization.Model.ManagementLockObject.t} | {:error, Tesla.Env.t}
  def management_locks_get_at_subscription_level(connection, lock_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Authorization/locks/#{lock_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Authorization.Model.ManagementLockObject{})
  end

  @doc """
  Get a management lock by scope.

  ## Parameters

  - connection (Microsoft.Azure.Management.Authorization.Connection): Connection to server
  - scope (String.t): The scope for the lock. 
  - lock_name (String.t): The name of lock.
  - api_version (String.t): The API version to use for the operation.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Authorization.Model.ManagementLockObject{}} on success
  {:error, info} on failure
  """
  @spec management_locks_get_by_scope(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Authorization.Model.ManagementLockObject.t} | {:error, Tesla.Env.t}
  def management_locks_get_by_scope(connection, scope, lock_name, api_version, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/#{scope}/providers/Microsoft.Authorization/locks/#{lock_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Authorization.Model.ManagementLockObject{})
  end

  @doc """
  Gets all the management locks for a resource group.

  ## Parameters

  - connection (Microsoft.Azure.Management.Authorization.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group containing the locks to get.
  - api_version (String.t): The API version to use for the operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters
    - :__filter (String.t): The filter to apply on the operation.

  ## Returns

  {:ok, %Microsoft.Azure.Management.Authorization.Model.ManagementLockListResult{}} on success
  {:error, info} on failure
  """
  @spec management_locks_list_at_resource_group_level(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Authorization.Model.ManagementLockListResult.t} | {:error, Tesla.Env.t}
  def management_locks_list_at_resource_group_level(connection, resource_group_name, api_version, subscription_id, opts \\ []) do
    optional_params = %{
      :"$filter" => :query
    }
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Authorization/locks")
    |> add_param(:query, :"api-version", api_version)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Authorization.Model.ManagementLockListResult{})
  end

  @doc """
  Gets all the management locks for a resource or any level below resource.

  ## Parameters

  - connection (Microsoft.Azure.Management.Authorization.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group containing the locked resource. The name is case insensitive.
  - resource_provider_namespace (String.t): The namespace of the resource provider.
  - parent_resource_path (String.t): The parent resource identity.
  - resource_type (String.t): The resource type of the locked resource.
  - resource_name (String.t): The name of the locked resource.
  - api_version (String.t): The API version to use for the operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters
    - :__filter (String.t): The filter to apply on the operation.

  ## Returns

  {:ok, %Microsoft.Azure.Management.Authorization.Model.ManagementLockListResult{}} on success
  {:error, info} on failure
  """
  @spec management_locks_list_at_resource_level(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Authorization.Model.ManagementLockListResult.t} | {:error, Tesla.Env.t}
  def management_locks_list_at_resource_level(connection, resource_group_name, resource_provider_namespace, parent_resource_path, resource_type, resource_name, api_version, subscription_id, opts \\ []) do
    optional_params = %{
      :"$filter" => :query
    }
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourcegroups/#{resource_group_name}/providers/#{resource_provider_namespace}/#{parent_resource_path}/#{resource_type}/#{resource_name}/providers/Microsoft.Authorization/locks")
    |> add_param(:query, :"api-version", api_version)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Authorization.Model.ManagementLockListResult{})
  end

  @doc """
  Gets all the management locks for a subscription.

  ## Parameters

  - connection (Microsoft.Azure.Management.Authorization.Connection): Connection to server
  - api_version (String.t): The API version to use for the operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters
    - :__filter (String.t): The filter to apply on the operation.

  ## Returns

  {:ok, %Microsoft.Azure.Management.Authorization.Model.ManagementLockListResult{}} on success
  {:error, info} on failure
  """
  @spec management_locks_list_at_subscription_level(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Authorization.Model.ManagementLockListResult.t} | {:error, Tesla.Env.t}
  def management_locks_list_at_subscription_level(connection, api_version, subscription_id, opts \\ []) do
    optional_params = %{
      :"$filter" => :query
    }
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Authorization/locks")
    |> add_param(:query, :"api-version", api_version)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Authorization.Model.ManagementLockListResult{})
  end
end
