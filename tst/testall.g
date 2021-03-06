#
# CddInterface: Gap interface to Cdd package
#
# This file runs package tests. It is also referenced in the package
# metadata in PackageInfo.g.
#
LoadPackage( "ComplexesCategories" );
LoadPackage( "LinearAlgebraForCAP" );
LoadPackage( "ModulePresentations" );
LoadPackage( "RingsForHomalg" );
LoadPackage( "GaussForHomalg" );
ReadPackage( "ComplexesCategories", "examples/pre_read/random_methods_for_module_presentations.g" );

field := HomalgFieldOfRationalsInSingular( );
R := field * "x,y,z";;
S := field * "x,y,z,t";;

dirs := DirectoriesPackageLibrary( "ComplexesCategories", "tst" );
TestDirectory( dirs, rec( exitGAP := true,
  testOptions:= rec(
      compareFunction :=
        function( s1, s2 )
          local new_s2, text_attr, attr;
          
            new_s2 := s2;
            
            text_attr := Difference( RecNames( TextAttr ), "CSI" );
            
            for attr in text_attr do
                 
              new_s2 := ReplacedString( new_s2, TextAttr.(attr), "" );
              
            od;
             
          return TEST.compareFunctions.uptowhitespace( s1, new_s2 );
           
        end )
                      )
);

FORCE_QUIT_GAP(1);
