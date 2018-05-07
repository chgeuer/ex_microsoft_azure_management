# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Preview.Containers.Api.BuildTasks do
  @moduledoc """
  API calls for all endpoints tagged `BuildTasks`.
  """

  alias Microsoft.Azure.Management.Preview.Containers.Connection
  import Microsoft.Azure.Management.Preview.Containers.RequestBuilder


  @doc """
  Creates a build task for a container registry with the specified parameters.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.Containers.Connection): Connection to server
  - subscription_id (String.t): The Microsoft Azure subscription ID.
  - resource_group_name (String.t): The name of the resource group to which the container registry belongs.
  - registry_name (String.t): The name of the container registry.
  - api_version (String.t): The client API version.
  - build_task_name (String.t): The name of the container registry build task.
  - build_task_create_parameters (BuildTask): The parameters for creating a build task.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.Containers.Model.BuildTask{}} on success
  {:error, info} on failure
  """
  @spec build_tasks_create(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, Microsoft.Azure.Management.Preview.Containers.Model.BuildTask.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.Containers.Model.BuildTask.t} | {:error, Tesla.Env.t}
  def build_tasks_create(connection, subscription_id, resource_group_name, registry_name, api_version, build_task_name, build_task_create_parameters, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/#{registry_name}/buildTasks/#{build_task_name}")
    |> add_param(:query, :"api-version", api_version)
    |> add_param(:body, :body, build_task_create_parameters)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.Containers.Model.BuildTask{})
  end

  @doc """
  Deletes a specified build task.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.Containers.Connection): Connection to server
  - subscription_id (String.t): The Microsoft Azure subscription ID.
  - resource_group_name (String.t): The name of the resource group to which the container registry belongs.
  - registry_name (String.t): The name of the container registry.
  - api_version (String.t): The client API version.
  - build_task_name (String.t): The name of the container registry build task.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec build_tasks_delete(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def build_tasks_delete(connection, subscription_id, resource_group_name, registry_name, api_version, build_task_name, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/#{registry_name}/buildTasks/#{build_task_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Get the properties of a specified build task.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.Containers.Connection): Connection to server
  - subscription_id (String.t): The Microsoft Azure subscription ID.
  - resource_group_name (String.t): The name of the resource group to which the container registry belongs.
  - registry_name (String.t): The name of the container registry.
  - api_version (String.t): The client API version.
  - build_task_name (String.t): The name of the container registry build task.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.Containers.Model.BuildTask{}} on success
  {:error, info} on failure
  """
  @spec build_tasks_get(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.Containers.Model.BuildTask.t} | {:error, Tesla.Env.t}
  def build_tasks_get(connection, subscription_id, resource_group_name, registry_name, api_version, build_task_name, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/#{registry_name}/buildTasks/#{build_task_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.Containers.Model.BuildTask{})
  end

  @doc """
  Lists all the build tasks for a specified container registry.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.Containers.Connection): Connection to server
  - subscription_id (String.t): The Microsoft Azure subscription ID.
  - resource_group_name (String.t): The name of the resource group to which the container registry belongs.
  - registry_name (String.t): The name of the container registry.
  - api_version (String.t): The client API version.
  - opts (KeywordList): [optional] Optional parameters
    - :__filter (String.t): The build task filter to apply on the operation.
    - :__skip_token (String.t): $skipToken is supported on get list of build tasks, which provides the next page in the list of tasks.

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.Containers.Model.BuildTaskListResult{}} on success
  {:error, info} on failure
  """
  @spec build_tasks_list(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.Containers.Model.BuildTaskListResult.t} | {:error, Tesla.Env.t}
  def build_tasks_list(connection, subscription_id, resource_group_name, registry_name, api_version, opts \\ []) do
    optional_params = %{
      :"$filter" => :query,
      :"$skipToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/#{registry_name}/buildTasks")
    |> add_param(:query, :"api-version", api_version)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.Containers.Model.BuildTaskListResult{})
  end

  @doc """
  Get the source control properties for a build task.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.Containers.Connection): Connection to server
  - subscription_id (String.t): The Microsoft Azure subscription ID.
  - resource_group_name (String.t): The name of the resource group to which the container registry belongs.
  - registry_name (String.t): The name of the container registry.
  - api_version (String.t): The client API version.
  - build_task_name (String.t): The name of the container registry build task.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.Containers.Model.SourceRepositoryProperties{}} on success
  {:error, info} on failure
  """
  @spec build_tasks_list_source_repository_properties(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.Containers.Model.SourceRepositoryProperties.t} | {:error, Tesla.Env.t}
  def build_tasks_list_source_repository_properties(connection, subscription_id, resource_group_name, registry_name, api_version, build_task_name, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/#{registry_name}/buildTasks/#{build_task_name}/listSourceRepositoryProperties")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.Containers.Model.SourceRepositoryProperties{})
  end

  @doc """
  Updates a build task with the specified parameters.

  ## Parameters

  - connection (Microsoft.Azure.Management.Preview.Containers.Connection): Connection to server
  - subscription_id (String.t): The Microsoft Azure subscription ID.
  - resource_group_name (String.t): The name of the resource group to which the container registry belongs.
  - registry_name (String.t): The name of the container registry.
  - api_version (String.t): The client API version.
  - build_task_name (String.t): The name of the container registry build task.
  - build_task_update_parameters (BuildTaskUpdateParameters): The parameters for updating a build task.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Preview.Containers.Model.BuildTask{}} on success
  {:error, info} on failure
  """
  @spec build_tasks_update(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, Microsoft.Azure.Management.Preview.Containers.Model.BuildTaskUpdateParameters.t, keyword()) :: {:ok, Microsoft.Azure.Management.Preview.Containers.Model.BuildTask.t} | {:error, Tesla.Env.t}
  def build_tasks_update(connection, subscription_id, resource_group_name, registry_name, api_version, build_task_name, build_task_update_parameters, _opts \\ []) do
    %{}
    |> method(:patch)
    |> url("/subscriptions/#{subscription_id}/resourceGroups/#{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/#{registry_name}/buildTasks/#{build_task_name}")
    |> add_param(:query, :"api-version", api_version)
    |> add_param(:body, :body, build_task_update_parameters)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Preview.Containers.Model.BuildTask{})
  end
end
