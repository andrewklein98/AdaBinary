with Ada.Integer_Text_IO;   use Ada.Integer_Text_IO;
with Ada.Text_IO;           use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Main is

   convert : Integer ;
   base : Integer;
   result_holder : Unbounded_String;
   result_s : Unbounded_String;
begin
   Put_Line("Input the number to convert to your base");
   Get(convert);
   Put_Line("Input the base you want to use");
   Get(base);
   while(convert >=1) loop
      result_holder:= To_Unbounded_String(Integer'Image(convert mod base));
      result_s := (result_holder & result_s);
      convert := convert/base;
   end loop;
   Put_Line(To_String(result_s));
end Main;
