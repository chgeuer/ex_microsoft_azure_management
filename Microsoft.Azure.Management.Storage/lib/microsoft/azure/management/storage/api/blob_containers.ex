# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Storage.Api.BlobContainers do
  @moduledoc """
  API calls for all endpoints tagged `BlobContainers`.
  """

  alias Microsoft.Azure.Management.Storage.Connection
  import Microsoft.Azure.Management.Storage.RequestBuilder


  @doc """
  Clears legal hold tags. Clearing the same or non-existent tag results in an idempotent operation. ClearLegalHold clears out only the specified tags in the request.

  ## Parameters

  - connection (Microsoft.Azure.Management.Storage.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group within the user&#39;s subscription. The name is case insensitive.
  - account_name (String.t): The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  - container_name (String.t): The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - legal_hold (LegalHold): The LegalHold property that will be clear from a blob container.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Storage.Model.LegalHold{}} on success
  {:error, info} on failure
  """
  @spec blob_containers_clear_legal_hold(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, Microsoft.Azure.Management.Storage.Model.LegalHold.t, keyword()) :: {:ok, Microsoft.Azure.Management.Storage.Model.LegalHold.t} | {:error, Tesla.Env.t}
  def blob_containers_clear_legal_hold(connection, resource_group_name, account_name, container_name, api_version, subscription_id, legal_hold, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Storage/storageAccounts/#{account_name}/blobServices/default/containers/#{container_name}/clearLegalHold")
    |> add_param(:query, :"api-version", api_version)
    |> add_param(:body, :body, legal_hold)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Storage.Model.LegalHold{})
  end

  @doc """
  Creates a new container under the specified account as described by request body. The container resource includes metadata and properties for that container. It does not include a list of the blobs contained by the container. 

  ## Parameters

  - connection (Microsoft.Azure.Management.Storage.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group within the user&#39;s subscription. The name is case insensitive.
  - account_name (String.t): The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  - container_name (String.t): The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  - blob_container (BlobContainer): Properties of the blob container to create.
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Storage.Model.BlobContainer{}} on success
  {:error, info} on failure
  """
  @spec blob_containers_create(Tesla.Env.client, String.t, String.t, String.t, Microsoft.Azure.Management.Storage.Model.BlobContainer.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Storage.Model.BlobContainer.t} | {:error, Tesla.Env.t}
  def blob_containers_create(connection, resource_group_name, account_name, container_name, blob_container, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Storage/storageAccounts/#{account_name}/blobServices/default/containers/#{container_name}")
    |> add_param(:body, :body, blob_container)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Storage.Model.BlobContainer{})
  end

  @doc """
  Creates or updates an unlocked immutability policy. ETag in If-Match is honored if given but not required for this operation.

  ## Parameters

  - connection (Microsoft.Azure.Management.Storage.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group within the user&#39;s subscription. The name is case insensitive.
  - account_name (String.t): The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  - container_name (String.t): The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  - immutability_policy_name (String.t): The name of the blob container immutabilityPolicy within the specified storage account. ImmutabilityPolicy Name must be &#39;default&#39;
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters
    - :parameters (ImmutabilityPolicy): The ImmutabilityPolicy Properties that will be created or updated to a blob container.
    - :if_match (String.t): The entity state (ETag) version of the immutability policy to update. A value of \&quot;*\&quot; can be used to apply the operation only if the immutability policy already exists. If omitted, this operation will always be applied.

  ## Returns

  {:ok, %Microsoft.Azure.Management.Storage.Model.ImmutabilityPolicy{}} on success
  {:error, info} on failure
  """
  @spec blob_containers_create_or_update_immutability_policy(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Storage.Model.ImmutabilityPolicy.t} | {:error, Tesla.Env.t}
  def blob_containers_create_or_update_immutability_policy(connection, resource_group_name, account_name, container_name, immutability_policy_name, api_version, subscription_id, opts \\ []) do
    optional_params = %{
      :"parameters" => :body,
      :"If-Match" => :headers
    }
    %{}
    |> method(:put)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Storage/storageAccounts/#{account_name}/blobServices/default/containers/#{container_name}/immutabilityPolicies/#{immutability_policy_name}")
    |> add_param(:query, :"api-version", api_version)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Storage.Model.ImmutabilityPolicy{})
  end

  @doc """
  Deletes specified container under its account.

  ## Parameters

  - connection (Microsoft.Azure.Management.Storage.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group within the user&#39;s subscription. The name is case insensitive.
  - account_name (String.t): The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  - container_name (String.t): The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec blob_containers_delete(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def blob_containers_delete(connection, resource_group_name, account_name, container_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Storage/storageAccounts/#{account_name}/blobServices/default/containers/#{container_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Aborts an unlocked immutability policy. The response of delete has immutabilityPeriodSinceCreationInDays set to 0. ETag in If-Match is required for this operation. Deleting a locked immutability policy is not allowed, only way is to delete the container after deleting all blobs inside the container.

  ## Parameters

  - connection (Microsoft.Azure.Management.Storage.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group within the user&#39;s subscription. The name is case insensitive.
  - account_name (String.t): The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  - container_name (String.t): The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  - immutability_policy_name (String.t): The name of the blob container immutabilityPolicy within the specified storage account. ImmutabilityPolicy Name must be &#39;default&#39;
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - if_match (String.t): The entity state (ETag) version of the immutability policy to update. A value of \&quot;*\&quot; can be used to apply the operation only if the immutability policy already exists. If omitted, this operation will always be applied.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Storage.Model.ImmutabilityPolicy{}} on success
  {:error, info} on failure
  """
  @spec blob_containers_delete_immutability_policy(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Storage.Model.ImmutabilityPolicy.t} | {:error, Tesla.Env.t}
  def blob_containers_delete_immutability_policy(connection, resource_group_name, account_name, container_name, immutability_policy_name, api_version, subscription_id, if_match, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Storage/storageAccounts/#{account_name}/blobServices/default/containers/#{container_name}/immutabilityPolicies/#{immutability_policy_name}")
    |> add_param(:query, :"api-version", api_version)
    |> add_param(:headers, :"If-Match", if_match)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Storage.Model.ImmutabilityPolicy{})
  end

  @doc """
  Extends the immutabilityPeriodSinceCreationInDays of a locked immutabilityPolicy. The only action allowed on a Locked policy will be this action. ETag in If-Match is required for this operation.

  ## Parameters

  - connection (Microsoft.Azure.Management.Storage.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group within the user&#39;s subscription. The name is case insensitive.
  - account_name (String.t): The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  - container_name (String.t): The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - if_match (String.t): The entity state (ETag) version of the immutability policy to update. A value of \&quot;*\&quot; can be used to apply the operation only if the immutability policy already exists. If omitted, this operation will always be applied.
  - opts (KeywordList): [optional] Optional parameters
    - :parameters (ImmutabilityPolicy): The ImmutabilityPolicy Properties that will be extented for a blob container.

  ## Returns

  {:ok, %Microsoft.Azure.Management.Storage.Model.ImmutabilityPolicy{}} on success
  {:error, info} on failure
  """
  @spec blob_containers_extend_immutability_policy(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Storage.Model.ImmutabilityPolicy.t} | {:error, Tesla.Env.t}
  def blob_containers_extend_immutability_policy(connection, resource_group_name, account_name, container_name, api_version, subscription_id, if_match, opts \\ []) do
    optional_params = %{
      :"parameters" => :body
    }
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Storage/storageAccounts/#{account_name}/blobServices/default/containers/#{container_name}/immutabilityPolicies/default/extend")
    |> add_param(:query, :"api-version", api_version)
    |> add_param(:headers, :"If-Match", if_match)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Storage.Model.ImmutabilityPolicy{})
  end

  @doc """
  Gets properties of a specified container. 

  ## Parameters

  - connection (Microsoft.Azure.Management.Storage.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group within the user&#39;s subscription. The name is case insensitive.
  - account_name (String.t): The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  - container_name (String.t): The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Storage.Model.BlobContainer{}} on success
  {:error, info} on failure
  """
  @spec blob_containers_get(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Storage.Model.BlobContainer.t} | {:error, Tesla.Env.t}
  def blob_containers_get(connection, resource_group_name, account_name, container_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Storage/storageAccounts/#{account_name}/blobServices/default/containers/#{container_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Storage.Model.BlobContainer{})
  end

  @doc """
  Gets the existing immutability policy along with the corresponding ETag in response headers and body.

  ## Parameters

  - connection (Microsoft.Azure.Management.Storage.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group within the user&#39;s subscription. The name is case insensitive.
  - account_name (String.t): The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  - container_name (String.t): The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  - immutability_policy_name (String.t): The name of the blob container immutabilityPolicy within the specified storage account. ImmutabilityPolicy Name must be &#39;default&#39;
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters
    - :if_match (String.t): The entity state (ETag) version of the immutability policy to update. A value of \&quot;*\&quot; can be used to apply the operation only if the immutability policy already exists. If omitted, this operation will always be applied.

  ## Returns

  {:ok, %Microsoft.Azure.Management.Storage.Model.ImmutabilityPolicy{}} on success
  {:error, info} on failure
  """
  @spec blob_containers_get_immutability_policy(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Storage.Model.ImmutabilityPolicy.t} | {:error, Tesla.Env.t}
  def blob_containers_get_immutability_policy(connection, resource_group_name, account_name, container_name, immutability_policy_name, api_version, subscription_id, opts \\ []) do
    optional_params = %{
      :"If-Match" => :headers
    }
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Storage/storageAccounts/#{account_name}/blobServices/default/containers/#{container_name}/immutabilityPolicies/#{immutability_policy_name}")
    |> add_param(:query, :"api-version", api_version)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Storage.Model.ImmutabilityPolicy{})
  end

  @doc """
  Lists all containers and does not support a prefix like data plane. Also SRP today does not return continuation token.

  ## Parameters

  - connection (Microsoft.Azure.Management.Storage.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group within the user&#39;s subscription. The name is case insensitive.
  - account_name (String.t): The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Storage.Model.ListContainerItems{}} on success
  {:error, info} on failure
  """
  @spec blob_containers_list(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Storage.Model.ListContainerItems.t} | {:error, Tesla.Env.t}
  def blob_containers_list(connection, resource_group_name, account_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Storage/storageAccounts/#{account_name}/blobServices/default/containers")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Storage.Model.ListContainerItems{})
  end

  @doc """
  Sets the ImmutabilityPolicy to Locked state. The only action allowed on a Locked policy is ExtendImmutabilityPolicy action. ETag in If-Match is required for this operation.

  ## Parameters

  - connection (Microsoft.Azure.Management.Storage.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group within the user&#39;s subscription. The name is case insensitive.
  - account_name (String.t): The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  - container_name (String.t): The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - if_match (String.t): The entity state (ETag) version of the immutability policy to update. A value of \&quot;*\&quot; can be used to apply the operation only if the immutability policy already exists. If omitted, this operation will always be applied.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Storage.Model.ImmutabilityPolicy{}} on success
  {:error, info} on failure
  """
  @spec blob_containers_lock_immutability_policy(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Storage.Model.ImmutabilityPolicy.t} | {:error, Tesla.Env.t}
  def blob_containers_lock_immutability_policy(connection, resource_group_name, account_name, container_name, api_version, subscription_id, if_match, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Storage/storageAccounts/#{account_name}/blobServices/default/containers/#{container_name}/immutabilityPolicies/default/lock")
    |> add_param(:query, :"api-version", api_version)
    |> add_param(:headers, :"If-Match", if_match)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Storage.Model.ImmutabilityPolicy{})
  end

  @doc """
  Sets legal hold tags. Setting the same tag results in an idempotent operation. SetLegalHold follows an append pattern and does not clear out the existing tags that are not specified in the request.

  ## Parameters

  - connection (Microsoft.Azure.Management.Storage.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group within the user&#39;s subscription. The name is case insensitive.
  - account_name (String.t): The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  - container_name (String.t): The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - legal_hold (LegalHold): The LegalHold property that will be set to a blob container.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Storage.Model.LegalHold{}} on success
  {:error, info} on failure
  """
  @spec blob_containers_set_legal_hold(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, Microsoft.Azure.Management.Storage.Model.LegalHold.t, keyword()) :: {:ok, Microsoft.Azure.Management.Storage.Model.LegalHold.t} | {:error, Tesla.Env.t}
  def blob_containers_set_legal_hold(connection, resource_group_name, account_name, container_name, api_version, subscription_id, legal_hold, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Storage/storageAccounts/#{account_name}/blobServices/default/containers/#{container_name}/setLegalHold")
    |> add_param(:query, :"api-version", api_version)
    |> add_param(:body, :body, legal_hold)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Storage.Model.LegalHold{})
  end

  @doc """
  Updates container properties as specified in request body. Properties not mentioned in the request will be unchanged. Update fails if the specified container doesn&#39;t already exist. 

  ## Parameters

  - connection (Microsoft.Azure.Management.Storage.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group within the user&#39;s subscription. The name is case insensitive.
  - account_name (String.t): The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  - container_name (String.t): The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  - blob_container (BlobContainer): Properties to update for the blob container.
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Storage.Model.BlobContainer{}} on success
  {:error, info} on failure
  """
  @spec blob_containers_update(Tesla.Env.client, String.t, String.t, String.t, Microsoft.Azure.Management.Storage.Model.BlobContainer.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Storage.Model.BlobContainer.t} | {:error, Tesla.Env.t}
  def blob_containers_update(connection, resource_group_name, account_name, container_name, blob_container, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.Storage/storageAccounts/#{account_name}/blobServices/default/containers/#{container_name}")
    |> add_param(:body, :body, blob_container)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Storage.Model.BlobContainer{})
  end
end
