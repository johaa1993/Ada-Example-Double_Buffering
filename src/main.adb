with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;



procedure Main is

   type Integer_Array is array (Integer range <>) of Integer;
   subtype Integer_Array_3 is Integer_Array (1 .. 3);
   procedure Put (Item : Integer_Array) is
   begin
      for E of Item loop
         Put (E, 0);
         Put ("");
      end loop;
   end Put;

   X : Integer_Array_3 := (others => 0);

   X2 : array (Boolean) of Integer_Array_3 := (others => (others => 0));
   B : Boolean := False;


   task Modifier;
   task body Modifier is
      N : Natural := 0;
   begin
      loop
         N := Natural'Succ (N);
         for E of X2 (B) loop
            delay 1.0;
            E := N;
         end loop;
         B := not B;
      end loop;
   end;

   task Printer;
   task body Printer is
   begin
      loop
         Put ("X: ");
         Put (X2 (not B));
         New_Line;
         delay 1.0;
      end loop;
   end;


begin
   Put_Line ("Hello template1.");
end;
