# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Microsoft.Azure.Management.Compute.Api.VirtualMachineImages do
  @moduledoc """
  API calls for all endpoints tagged `VirtualMachineImages`.
  """

  alias Microsoft.Azure.Management.Compute.Connection
  import Microsoft.Azure.Management.Compute.RequestBuilder


  @doc """
  Gets a virtual machine image.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - location (String.t): The name of a supported Azure region.
  - publisher_name (String.t): A valid image publisher.
  - offer (String.t): A valid image publisher offer.
  - skus (String.t): A valid image SKU.
  - version (String.t): A valid image SKU version.
  - api_version (String.t): Client Api Version.
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Microsoft.Azure.Management.Compute.Model.VirtualMachineImage{}} on success
  {:error, info} on failure
  """
  @spec virtual_machine_images_get(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, Microsoft.Azure.Management.Compute.Model.VirtualMachineImage.t} | {:error, Tesla.Env.t}
  def virtual_machine_images_get(connection, location, publisher_name, offer, skus, version, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Compute/locations/#{location}/publishers/#{publisher_name}/artifacttypes/vmimage/offers/#{offer}/skus/#{skus}/versions/#{version}")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Microsoft.Azure.Management.Compute.Model.VirtualMachineImage{})
  end

  @doc """
  Gets a list of all virtual machine image versions for the specified location, publisher, offer, and SKU.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - location (String.t): The name of a supported Azure region.
  - publisher_name (String.t): A valid image publisher.
  - offer (String.t): A valid image publisher offer.
  - skus (String.t): A valid image SKU.
  - api_version (String.t): Client Api Version.
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters
    - :__filter (String.t): The filter to apply on the operation.
    - :__top (integer()): 
    - :__orderby (String.t): 

  ## Returns

  {:ok, [%VirtualMachineImageResource{}, ...]} on success
  {:error, info} on failure
  """
  @spec virtual_machine_images_list(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, list(Microsoft.Azure.Management.Compute.Model.VirtualMachineImageResource.t)} | {:error, Tesla.Env.t}
  def virtual_machine_images_list(connection, location, publisher_name, offer, skus, api_version, subscription_id, opts \\ []) do
    optional_params = %{
      :"$filter" => :query,
      :"$top" => :query,
      :"$orderby" => :query
    }
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Compute/locations/#{location}/publishers/#{publisher_name}/artifacttypes/vmimage/offers/#{offer}/skus/#{skus}/versions")
    |> add_param(:query, :"api-version", api_version)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode([%Microsoft.Azure.Management.Compute.Model.VirtualMachineImageResource{}])
  end

  @doc """
  Gets a list of virtual machine image offers for the specified location and publisher.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - location (String.t): The name of a supported Azure region.
  - publisher_name (String.t): A valid image publisher.
  - api_version (String.t): Client Api Version.
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, [%VirtualMachineImageResource{}, ...]} on success
  {:error, info} on failure
  """
  @spec virtual_machine_images_list_offers(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, list(Microsoft.Azure.Management.Compute.Model.VirtualMachineImageResource.t)} | {:error, Tesla.Env.t}
  def virtual_machine_images_list_offers(connection, location, publisher_name, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Compute/locations/#{location}/publishers/#{publisher_name}/artifacttypes/vmimage/offers")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode([%Microsoft.Azure.Management.Compute.Model.VirtualMachineImageResource{}])
  end

  @doc """
  Gets a list of virtual machine image publishers for the specified Azure location.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - location (String.t): The name of a supported Azure region.
  - api_version (String.t): Client Api Version.
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, [%VirtualMachineImageResource{}, ...]} on success
  {:error, info} on failure
  """
  @spec virtual_machine_images_list_publishers(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, list(Microsoft.Azure.Management.Compute.Model.VirtualMachineImageResource.t)} | {:error, Tesla.Env.t}
  def virtual_machine_images_list_publishers(connection, location, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Compute/locations/#{location}/publishers")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode([%Microsoft.Azure.Management.Compute.Model.VirtualMachineImageResource{}])
  end

  @doc """
  Gets a list of virtual machine image SKUs for the specified location, publisher, and offer.

  ## Parameters

  - connection (Microsoft.Azure.Management.Compute.Connection): Connection to server
  - location (String.t): The name of a supported Azure region.
  - publisher_name (String.t): A valid image publisher.
  - offer (String.t): A valid image publisher offer.
  - api_version (String.t): Client Api Version.
  - subscription_id (String.t): Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, [%VirtualMachineImageResource{}, ...]} on success
  {:error, info} on failure
  """
  @spec virtual_machine_images_list_skus(Tesla.Env.client, String.t, String.t, String.t, String.t, String.t, keyword()) :: {:ok, list(Microsoft.Azure.Management.Compute.Model.VirtualMachineImageResource.t)} | {:error, Tesla.Env.t}
  def virtual_machine_images_list_skus(connection, location, publisher_name, offer, api_version, subscription_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/subscriptions/#{subscription_id}/providers/Microsoft.Compute/locations/#{location}/publishers/#{publisher_name}/artifacttypes/vmimage/offers/#{offer}/skus")
    |> add_param(:query, :"api-version", api_version)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode([%Microsoft.Azure.Management.Compute.Model.VirtualMachineImageResource{}])
  end
end
