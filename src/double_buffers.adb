package body Double_Buffers is

   function Get (Item : Double_Buffer_Handler; Buf : Element_Array) return Element is
   begin
      return Item (Item.I);
   end;

   procedure Swap (Item : in out Double_Buffer_Handler) is
   begin
      null;
   end;

end Double_Buffers;
