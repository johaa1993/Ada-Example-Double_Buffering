generic
   type Index is range <>;
   type Element is private;
   type Element_Array is array (Index range <>) of Element;
package Double_Buffers is

   type Double_Buffer_Handler is record
      I : Integer := 0;
   end record;

   function Get (Item : Double_Buffer_Handler; Buf : Element_Array) return Element;
   procedure Swap (Item : in out Double_Buffer_Handler);

end Double_Buffers;
