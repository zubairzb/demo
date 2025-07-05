import { useAuth0 } from "@auth0/auth0-react";
import { useLocation } from "react-router-dom";

import { useGetMyUser } from "@/api/MyUserApi";

import { Button } from "./ui/button";
import LoadingButton from "./LoadingButton";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogTitle,
  DialogTrigger,
} from "./ui/dialog";

import UserProfileForm, {
  UserFormData,
} from "@/forms/user-profile-form/UserProfileForm";

type Props = {
  disabled: boolean;
  isLoading: boolean;
  onCheckout: (userFormData: UserFormData) => void;
};

/**
 * Checkout Button component
 * @description This component is used to open the checkout modal if user is logged in. If user is not logged in, it will redirect to login page and then open the checkout modal.
 */
const CheckoutButton = ({ disabled, isLoading, onCheckout }: Props) => {
  const { pathname } = useLocation();
  const { currentUser, isLoading: isGetUserLoading } = useGetMyUser();
  const {
    isAuthenticated,
    loginWithRedirect,
    isLoading: isAuthLoading,
  } = useAuth0();

  const onLogin = async () => {
    console.log("pathname", pathname);
    await loginWithRedirect({
      appState: { returnTo: pathname },
    });
    console.log("isAuthenticated", isAuthenticated);
  };

  return !isAuthenticated ? (
    <Button onClick={onLogin} type="button" className="flex-1 bg-orange-500">
      Log in to Checkout
    </Button>
  ) : isAuthLoading || !currentUser || isLoading ? (
    <LoadingButton flex="flex flex-1" />
  ) : (
    <Dialog>
      <DialogTrigger asChild>
        <Button disabled={disabled} className="flex-1 bg-orange-500 ">
          Go to Checkout
        </Button>
      </DialogTrigger>
      <DialogTitle></DialogTitle>
      <DialogDescription></DialogDescription>
      <DialogContent className="max-w-[425px] md:min-w-[700px] bg-gray-50">
        <UserProfileForm
          onSave={onCheckout}
          currentUser={currentUser}
          isLoading={isGetUserLoading}
          title="Confirm Delivery Details"
          ButtonText="Continue to payment"
        />
      </DialogContent>
    </Dialog>
  );
};

export default CheckoutButton;
