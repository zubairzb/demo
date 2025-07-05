import { toast } from "sonner";
import { useQuery } from "react-query";
import { Restaurant, RestaurantSearch } from "@/types";
import { searchState } from "@/pages/SearchPage";

const API_BASE_URL = import.meta.env.VITE_API_BASE_URL;

/**
 * Get restaurant
 * @description This hook is used to fetch a restaurant from the API based on the restaurant id.
 */
export const useGetRestaurant = (restaurantId?: string) => {
  const getRestaurantByIdRequest = async (): Promise<Restaurant> => {
    const response = await fetch(
      `${API_BASE_URL}/api/restaurant/${restaurantId}`
    );

    if (!response.ok) throw new Error("Failed to get restaurant");

    return response.json();
  };

  const { data: restaurant, isLoading } = useQuery(
    ["getRestaurant", restaurantId],
    getRestaurantByIdRequest,
    {
      enabled: !!restaurantId,
      onError: () => {
        toast.error("Failed to get restaurant. Please try again later.");
      },
    }
  );

  return { restaurant, isLoading };
};

/**
 * Search restaurants
 * @description This hook is used to fetch restaurants from the API based on the city and search state.
 */
export const useSearchRestaurants = (
  searchState: searchState,
  city?: string
) => {
  const createSearchRequest = async (): Promise<RestaurantSearch> => {
    const params = new URLSearchParams();
    params.set("page", searchState.page.toString());
    params.set("sortOption", searchState.sortOption);
    params.set("searchQuery", searchState.searchQuery);
    params.set("selectedCuisines", searchState.selectedCuisines.join(","));

    const response = await fetch(
      `${API_BASE_URL}/api/restaurant/search/${city}?${params.toString()}`
    );

    if (!response.ok) throw new Error("Failed to get restaurants");

    return response.json();
  };

  const { data: restaurants, isLoading } = useQuery(
    ["searchRestaurants", searchState],
    createSearchRequest,
    {
      enabled: !!city,
      onError: () => {
        toast.error("Failed to get restaurants. Please try again later.");
      },
    }
  );

  return { restaurants, isLoading };
};
