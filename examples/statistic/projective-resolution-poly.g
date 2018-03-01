LoadPackage( "profiling" );
LoadPackage( "RingsForHomalg" );
LoadPackage( "ComplexesForCap" );
LoadPackage( "ModulePresentations" );

R := HomalgFieldOfRationalsInSingular( )*"x,y,z,u,v,t";;
cat := LeftPresentations( R: FinalizeCategory := false );
AddEpimorphismFromSomeProjectiveObject( cat, CoverByFreeModule );
SetIsAbelianCategoryWithEnoughProjectives( cat, true );
Finalize( cat );
M := AsLeftPresentation( HomalgMatrix( "[ [ x ], [ y ], [ z ], [ u ], [ v ], [ t ], [ t*v*u ] ]", 7, 1, R ) );
C := StalkCochainComplex( M, 10 );

# DeactivateCachingOfCategory( cat );
CapCategorySwitchLogicOff( cat );
# DisableBasicOperationTypeCheck( cat );

ProfileLineByLine( "profile.gz" );
## code begin
p := ProjectiveResolutionWithBounds( C, -20 );
## code end
UnprofileLineByLine();
parsed := ReadLineByLineProfile( "profile.gz" );;
OutputAnnotatedCodeCoverageFiles( parsed, "profile_dir" );
