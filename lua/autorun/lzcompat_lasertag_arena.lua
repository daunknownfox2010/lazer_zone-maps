-- gm_lasertag_arena compatibility

AddCSLuaFile();


-- Disables yellow team
LZDisableYellowTeam = true;


if ( SERVER ) then

	-- Post map cleanup
	function LZCOMPATPostCleanupMap()
	
		local basePoint = ents.Create( "lz_basepoint" );
		basePoint:SetPos( Vector( 1344, -20, 186 ) );
		basePoint:SetKeyValue( "TeamID", "1" );
		basePoint:Spawn();
		basePoint:Activate();
	
		if ( IsValid( basePoint ) && IsValid( basePoint:GetPhysicsObject() ) ) then
		
			basePoint:GetPhysicsObject():EnableMotion( false );
		
		end
	
		local basePoint = ents.Create( "lz_basepoint" );
		basePoint:SetPos( Vector( -1344, -1580, 186 ) );
		basePoint:SetKeyValue( "TeamID", "2" );
		basePoint:Spawn();
		basePoint:Activate();
	
		if ( IsValid( basePoint ) && IsValid( basePoint:GetPhysicsObject() ) ) then
		
			basePoint:GetPhysicsObject():EnableMotion( false );
		
		end
	
		local basePoint = ents.Create( "lz_basepoint" );
		basePoint:SetPos( Vector( 229, -1518, 420 ) );
		basePoint:Spawn();
		basePoint:Activate();
	
		if ( IsValid( basePoint ) && IsValid( basePoint:GetPhysicsObject() ) ) then
		
			basePoint:GetPhysicsObject():EnableMotion( false );
		
		end
	
		local basePoint = ents.Create( "lz_basepoint" );
		basePoint:SetPos( Vector( -345, -76, 419 ) );
		basePoint:Spawn();
		basePoint:Activate();
	
		if ( IsValid( basePoint ) && IsValid( basePoint:GetPhysicsObject() ) ) then
		
			basePoint:GetPhysicsObject():EnableMotion( false );
		
		end
	
	end
	hook.Add( "PostCleanupMap", "LZCOMPATPostCleanupMap", LZCOMPATPostCleanupMap );

end
