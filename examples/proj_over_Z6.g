
#! @Chunk Z_0
#! @BeginLatexOnly
#! Let 
#! @EndLatexOnly
#! @Example
LoadPackage( "ModulePresentations" );;
LoadPackage( "ComplexesForCAP" );;
Z6 := HomalgRingOfIntegers( )/6;
#! Z/( 6 )
cat := LeftPresentations( Z6 );
#! Category of left presentations of Z/( 6 )
m := HomalgMatrix( "[ [ 3 ] ]", 1, 1, Z6 );
#! <A 1 x 1 matrix over a residue class ring>
Z2 := AsLeftPresentation( m );
#! <An object in Category of left presentations of Z/( 6 )>
proj_Z2 := ProjectiveResolution( Z2 );
#! <A bounded from above object in Cochain complexes category 
#! over Category of left presentations of Z/( 6 ) with active upper bound 1>
Display( proj_Z2^-1 );
#! [ [ 3 ] ]
#! 
#! modulo [ 6 ]
#! 
#! A morphism in Category of left presentations of Z/( 6 )
Display( proj_Z2^-2 );
#! [ [ 2 ] ]
#! 
#! modulo [ 6 ]
#! 
#! A morphism in Category of left presentations of Z/( 6 )
Display( proj_Z2^-300 );
#! [ [ 2 ] ]
#! 
#! modulo [ 6 ]
#! 
#! A morphism in Category of left presentations of Z/( 6 )
Display( proj_Z2^-301 );
#! [ [ 3 ] ]
#! 
#! modulo [ 6 ]
#! 
#! A morphism in Category of left presentations of Z/( 6 )
#! @EndExample
#! @EndChunk
