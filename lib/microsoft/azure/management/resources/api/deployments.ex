# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Resources.Api.Deployments do
  @moduledoc """
  API calls for all endpoints tagged `Deployments`.
  """

  alias Microsoft.Azure.Management.Resources.Connection
  import Microsoft.Azure.Management.Resources.RequestBuilder


  @doc """
  Cancels a currently running template deployment.
  You can cancel a deployment only if the provisioningState is Accepted or Running. After the deployment is canceled, the provisioningState is set to Canceled. Canceling a template deployment stops the currently running template deployment and leaves the resource group partially deployed.

  ## Parameters

  - connection (Microsoft.Azure.Management.Resources.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group. The name is case insensitive.
  - deployment_name (String.t): The name of the deployment to cancel.
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec deployments_cancel(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def deployments_cancel(connection, resource_group_name, deployment_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourcegroups/#{resource_group_name}/providers/Microsoft.Resources/deployments/#{deployment_name}/cancel")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Checks whether the deployment exists.

  ## Parameters

  - connection (Microsoft.Azure.Management.Resources.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group with the deployment to check. The name is case insensitive.
  - deployment_name (String.t): The name of the deployment to check.
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec deployments_check_existence(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def deployments_check_existence(connection, resource_group_name, deployment_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:head)
    |> url("/subscriptions/#{subscription_id}/resourcegroups/#{resource_group_name}/providers/Microsoft.Resources/deployments/#{deployment_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Deploys resources to a resource group.
  You can provide the template and parameters directly in the request or link to JSON files.

  ## Parameters

  - connection (Microsoft.Azure.Management.Resources.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group to deploy the resources to. The name is case insensitive. The resource group must already exist.
  - deployment_name (String.t): The name of the deployment.
  - parameters (Deployment): Additional parameters supplied to the operation.
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Resources.Model.DeploymentExtended{}} on success
  {:error, info} on failure
  """
  @spec deployments_create_or_update(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Resources.Model.Deployment.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Resources.Model.DeploymentExtended.t} | {:error, Tesla.Env.t}
  def deployments_create_or_update(connection, resource_group_name, deployment_name, parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/subscriptions/#{subscription_id}/resourcegroups/#{resource_group_name}/providers/Microsoft.Resources/deployments/#{deployment_name}")
    |> add_param(:body, :"parameters", parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Resources.Model.DeploymentExtended{})
  end

  @doc """
  Deletes a deployment from the deployment history.
  A template deployment that is currently running cannot be deleted. Deleting a template deployment removes the associated deployment operations. Deleting a template deployment does not affect the state of the resource group. This is an asynchronous operation that returns a status of 202 until the template deployment is successfully deleted. The Location response header contains the URI that is used to obtain the status of the process. While the process is running, a call to the URI in the Location header returns a status of 202. When the process finishes, the URI in the Location header returns a status of 204 on success. If the asynchronous request failed, the URI in the Location header returns an error-level status code.

  ## Parameters

  - connection (Microsoft.Azure.Management.Resources.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group with the deployment to delete. The name is case insensitive.
  - deployment_name (String.t): The name of the deployment to delete.
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec deployments_delete(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def deployments_delete(connection, resource_group_name, deployment_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/subscriptions/#{subscription_id}/resourcegroups/#{resource_group_name}/providers/Microsoft.Resources/deployments/#{deployment_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Exports the template used for specified deployment.

  ## Parameters

  - connection (Microsoft.Azure.Management.Resources.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group. The name is case insensitive.
  - deployment_name (String.t): The name of the deployment from which to get the template.
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Resources.Model.DeploymentExportResult{}} on success
  {:error, info} on failure
  """
  @spec deployments_export_template(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Resources.Model.DeploymentExportResult.t} | {:error, Tesla.Env.t}
  def deployments_export_template(connection, resource_group_name, deployment_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourcegroups/#{resource_group_name}/providers/Microsoft.Resources/deployments/#{deployment_name}/exportTemplate")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Resources.Model.DeploymentExportResult{})
  end

  @doc """
  Gets a deployment.

  ## Parameters

  - connection (Microsoft.Azure.Management.Resources.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group. The name is case insensitive.
  - deployment_name (String.t): The name of the deployment to get.
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Resources.Model.DeploymentExtended{}} on success
  {:error, info} on failure
  """
  @spec deployments_get(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Resources.Model.DeploymentExtended.t} | {:error, Tesla.Env.t}
  def deployments_get(connection, resource_group_name, deployment_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourcegroups/#{resource_group_name}/providers/Microsoft.Resources/deployments/#{deployment_name}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Resources.Model.DeploymentExtended{})
  end

  @doc """
  Get all the deployments for a resource group.

  ## Parameters

  - connection (Microsoft.Azure.Management.Resources.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group with the deployments to get. The name is case insensitive.
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters
    - :__filter (String.t): The filter to apply on the operation. For example, you can use $filter&#x3D;provisioningState eq &#39;{state}&#39;.
    - :__top (integer()): The number of results to get. If null is passed, returns all deployments.

  ## Returns

  {:ok, %Microsoft.Azure.Management.Resources.Model.DeploymentListResult{}} on success
  {:error, info} on failure
  """
  @spec deployments_list_by_resource_group(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Resources.Model.DeploymentListResult.t} | {:error, Tesla.Env.t}
  def deployments_list_by_resource_group(connection, resource_group_name, api_version, subscription_id, opts \\ []) do
    optional_params = %{
      :"$filter" => :query,
      :"$top" => :query
    }
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/resourcegroups/#{resource_group_name}/providers/Microsoft.Resources/deployments/")
    |> add_param(:query, :"api-version", api_version)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Resources.Model.DeploymentListResult{})
  end

  @doc """
  Validates whether the specified template is syntactically correct and will be accepted by Azure Resource Manager..

  ## Parameters

  - connection (Microsoft.Azure.Management.Resources.Connection): Connection to server
  - resource_group_name (String.t): The name of the resource group the template will be deployed to. The name is case insensitive.
  - deployment_name (String.t): The name of the deployment.
  - parameters (Deployment): Parameters to validate.
  - api_version (String.t): The API version to use for this operation.
  - subscription_id (String.t): The ID of the target subscription.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Resources.Model.DeploymentValidateResult{}} on success
  {:error, info} on failure
  """
  @spec deployments_validate(Tesla.Env.client, String.t, String.t, Microsoft.Azure.Management.Resources.Model.Deployment.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Resources.Model.DeploymentValidateResult.t} | {:error, Tesla.Env.t}
  def deployments_validate(connection, resource_group_name, deployment_name, parameters, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/subscriptions/#{subscription_id}/resourcegroups/#{resource_group_name}/providers/Microsoft.Resources/deployments/#{deployment_name}/validate")
    |> add_param(:body, :"parameters", parameters)
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Resources.Model.DeploymentValidateResult{})
  end
end
