import CuisineCheckbox from "./CuisineCheckbox";
import { useFormContext } from "react-hook-form";
import { cuisineList } from "@/config/restaurant-options-config";
import {
  FormDescription,
  FormField,
  FormItem,
  FormMessage,
} from "@/components/ui/form";

const CuisinesSection = () => {
  const { control } = useFormContext();

  return (
    <div className="space-y-4">
      <div>
        <h2 className="text-2xl font-bold">Cuisines</h2>
        <FormDescription>
          Select the cuisines that your restaurant serves
        </FormDescription>
      </div>
      <FormField
        control={control}
        name="cuisines"
        render={({ field }) => (
          <FormItem>
            <div className="grid grid-cols-2 gap-3 md:grid-cols-5">
              {cuisineList.map((cuisineItem) => (
                <CuisineCheckbox
                  field={field}
                  key={cuisineItem.id}
                  cuisine={cuisineItem}
                />
              ))}
            </div>
            <FormMessage />
          </FormItem>
        )}
      />
    </div>
  );
};

export default CuisinesSection;
