
 -- MOOSE SETUP FOR OPERATION ENDURING ODYSSEY --
  

  -- Declare Cap + Engage Zones --
 
  TAB1_CAP = ZONE_POLYGON:New( "TAB 1 CAP", GROUP:FindByName( "TAB 1 CAP"))
  TAB2_CAP = ZONE_POLYGON:New( "TAB 2 CAP", GROUP:FindByName( "TAB 2 CAP"))
  TAB3_CAP = ZONE_POLYGON:New( "TAB 3 CAP", GROUP:FindByName( "TAB 3 CAP"))
  TAB4_CAP = ZONE_POLYGON:New( "TAB 4 CAP", GROUP:FindByName( "TAB 4 CAP"))
  TAB5_CAP = ZONE_POLYGON:New( "TAB 5 CAP", GROUP:FindByName( "TAB 5 CAP"))
  TAB6_CAP = ZONE_POLYGON:New( "TAB 6 CAP", GROUP:FindByName( "TAB 6 CAP"))
  TAB7_CAP = ZONE_POLYGON:New( "TAB 7 CAP", GROUP:FindByName( "TAB 7 CAP"))
  TAB1_Eng = ZONE_POLYGON:New( "TAB 1 Engage", GROUP:FindByName( "TAB 1 Engage"))
  TAB2_Eng = ZONE_POLYGON:New( "TAB 2 Engage", GROUP:FindByName( "TAB 2 Engage"))
  TAB3_Eng = ZONE_POLYGON:New( "TAB 3 Engage", GROUP:FindByName( "TAB 3 Engage"))
  TAB4_Eng = ZONE_POLYGON:New( "TAB 4 Engage", GROUP:FindByName( "TAB 4 Engage"))
  TAB5_Eng = ZONE_POLYGON:New( "TAB 5 Engage", GROUP:FindByName( "TAB 5 Engage"))
  TAB6_Eng = ZONE_POLYGON:New( "TAB 6 Engage", GROUP:FindByName( "TAB 6 Engage"))  
  TAB7_Eng = ZONE_POLYGON:New( "TAB 7 Engage", GROUP:FindByName( "TAB 7 Engage"))
  
  
  -- Setup Detection Groups --

  DetectionSetGroup = SET_GROUP:New()
  DetectionSetGroup:FilterPrefixes( {"EWR_Red", "AWACS_Red"})
  DetectionSetGroup:FilterStart()
  Detection = DETECTION_AREAS:New( DetectionSetGroup, 30000 )
 

  -- Initialise Dispatchers --

  A2ADispatcherRed = AI_A2A_DISPATCHER:New( Detection )
	
  
  -- Declare Border Zones --

  USBorderZone = ZONE_POLYGON:New( "US Border", GROUP:FindByName( "US Border" ) )
  IranBorderZone = ZONE_POLYGON:New( "Iran Border", GROUP:FindByName( "Iran Border"))
  
 
  -- Setup Dispatcher Borders --

  A2ADispatcherRed:SetBorderZone ( IranBorderZone )
   
 
  -- Dispatcher Settings --

  A2ADispatcherRed:SetDefaultTakeoffInAir()
  A2ADispatcherRed:SetDefaultLandingAtRunway()
  A2ADispatcherRed:SetDefaultFuelThreshold( 0.15 )
  A2ADispatcherRed:SetIntercept( 60 )
  A2ADispatcherRed:SetDisengageRadius( 300000 )
  A2ADispatcherRed:SetEngageRadius( 120000 )
  A2ADispatcherRed:SetGciRadius( 300000 )
  
  
  -- Setup Squadrons -- 
 
  A2ADispatcherRed:SetSquadron("TAB 1", AIRBASE.PersianGulf.Bandar_e_Jask_airfield, { "Iran MiG-21 Sqn" }, 30 )
  A2ADispatcherRed:SetSquadron("TAB 2", AIRBASE.PersianGulf.Havadarya, { "Iran F-4E Sqn"}, 30 )
  A2ADispatcherRed:SetSquadron("TAB 3", AIRBASE.PersianGulf.Lar_Airbase, { "Iran Mig-29A Sqn"}, 16 )
  A2ADispatcherRed:SetSquadron("TAB 4", AIRBASE.PersianGulf.Bandar_Lengeh, { "Iran MiG-21 Sqn"}, 30 )
  A2ADispatcherRed:SetSquadron("TAB 5", AIRBASE.PersianGulf.Jiroft_Airport, { "Iran F-14B Sqn"}, 8 )
  A2ADispatcherRed:SetSquadron("TAB 6", AIRBASE.PersianGulf.Jiroft_Airport, { "Iran F-14B Sqn"}, 8 )
  A2ADispatcherRed:SetSquadron("TAB 7", AIRBASE.PersianGulf.Lar_Airbase, { "Iran Mig-29A Sqn"}, 16 )
  --A2ADispatcherRed:SetSquadron("GCI 1", AIRBASE.PersianGulf.Lar_Airbase, { "Iran F-14B Sqn"}, 16 )
 

  -- Squadron Overhead Settings -- 

  A2ADispatcherRed:SetSquadronOverhead( "TAB 1", 1 )
  A2ADispatcherRed:SetSquadronOverhead( "TAB 2", 1 )
  A2ADispatcherRed:SetSquadronOverhead( "TAB 3", 1 )
  A2ADispatcherRed:SetSquadronOverhead( "TAB 4", 1 )
  A2ADispatcherRed:SetSquadronOverhead( "TAB 5", 1 )
  A2ADispatcherRed:SetSquadronOverhead( "TAB 6", 1 )
  A2ADispatcherRed:SetSquadronOverhead( "TAB 7", 1 )
  --A2ADispatcherRed:SetSquadronOverhead( "GCI 1", 1 )
  
  
  -- Squadron Grouping Settings -- 

  A2ADispatcherRed:SetSquadronGrouping( "TAB 1", 2 )
  A2ADispatcherRed:SetSquadronGrouping( "TAB 2", 2 )
  A2ADispatcherRed:SetSquadronGrouping( "TAB 3", 2 )
  A2ADispatcherRed:SetSquadronGrouping( "TAB 4", 2 )
  A2ADispatcherRed:SetSquadronGrouping( "TAB 5", 2 )
  A2ADispatcherRed:SetSquadronGrouping( "TAB 6", 2 )
  A2ADispatcherRed:SetSquadronGrouping( "TAB 7", 2 )
  --A2ADispatcherRed:SetSquadronGrouping( "GCI 1", 2 )
  
  
  -- Squadron Takeoff Settings -- 

  A2ADispatcherRed:SetSquadronTakeoffInAir( "TAB 1" )
  A2ADispatcherRed:SetSquadronTakeoffInAir( "TAB 2" )
  A2ADispatcherRed:SetSquadronTakeoffInAirAltitude( "TAB 3", 7000 )
  A2ADispatcherRed:SetSquadronTakeoffInAir( "TAB 4" )
  A2ADispatcherRed:SetSquadronTakeoffInAirAltitude( "TAB 5", 7000 )
  A2ADispatcherRed:SetSquadronTakeoffInAirAltitude( "TAB 6", 7000 )
  A2ADispatcherRed:SetSquadronTakeoffInAirAltitude( "TAB 7", 7000 )
  --A2ADispatcherRed:SetSquadronTakeoffInAirAltitude( "GCI 1", 7000 )
  
  
  -- Squadron Landing Settings --

  A2ADispatcherRed:SetSquadronLandingAtRunway( "TAB 1" )
  A2ADispatcherRed:SetSquadronLandingAtRunway( "TAB 2" )
  A2ADispatcherRed:SetSquadronLandingAtRunway( "TAB 3" )
  A2ADispatcherRed:SetSquadronLandingAtRunway( "TAB 4" )
  A2ADispatcherRed:SetSquadronLandingAtRunway( "TAB 5" )
  A2ADispatcherRed:SetSquadronLandingAtRunway( "TAB 6" )
  A2ADispatcherRed:SetSquadronLandingAtRunway( "TAB 7" )
  --A2ADispatcherRed:SetSquadronLandingAtRunway( "GCI 1" )
  

 -- Squadron CAP Settings --
      --SetSquadronCap( "Sqn Name", CAPZoneName, Floor, Ceiling, MinSpeed, MaxSpeed, EngSpeedMin, EngSpeedMAx, "RADIO"/"BARO" )
	  
  A2ADispatcherRed:SetSquadronCap( "TAB 1", TAB1_CAP, 7315, 9753, 740, 740, 1200, 1800, "BARO" )
  A2ADispatcherRed:SetSquadronCapRacetrack( "TAB 1", 28000, 37000, 180, 220, nil, nil, {TAB1_CAP:GetRandomCoordinate()})
  A2ADispatcherRed:SetSquadronCap( "TAB 2", TAB2_CAP, 7315, 9753, 640, 640, 1200, 1800, "BARO" )
  A2ADispatcherRed:SetSquadronCapRacetrack( "TAB 2", 28000, 37000, 180, 190, nil, nil, {TAB2_CAP:GetRandomCoordinate()})
  A2ADispatcherRed:SetSquadronCap( "TAB 3", TAB3_CAP, 7315, 9753, 740, 740, 1200, 1800, "BARO" )
  A2ADispatcherRed:SetSquadronCapRacetrack( "TAB 3", 28000, 37000, 170, 190, nil, nil, {TAB3_CAP:GetRandomCoordinate()})
  A2ADispatcherRed:SetSquadronCap( "TAB 4", TAB4_CAP, 7315, 9753, 740, 740, 1200, 1800, "BARO" )
  A2ADispatcherRed:SetSquadronCapRacetrack( "TAB 4", 28000, 37000, 170, 180, nil, nil, {TAB4_CAP:GetRandomCoordinate()})
  A2ADispatcherRed:SetSquadronCap( "TAB 5", TAB5_CAP, 9753, 9753, 740, 740, 1200, 1800, "BARO" )
  A2ADispatcherRed:SetSquadronCapRacetrack( "TAB 5", 28000, 37000, 180, 180, nil, nil, {TAB5_CAP:GetRandomCoordinate()})
  A2ADispatcherRed:SetSquadronCap( "TAB 6", TAB6_CAP, 9753, 9753, 740, 740, 1200, 1800, "BARO" )
  A2ADispatcherRed:SetSquadronCapRacetrack( "TAB 6", 28000, 37000, 180, 180, nil, nil, {TAB6_CAP:GetRandomCoordinate()})
  A2ADispatcherRed:SetSquadronCap( "TAB 7", TAB7_CAP, 7315, 9753, 740, 740, 1200, 1800, "BARO" )
  A2ADispatcherRed:SetSquadronCapRacetrack( "TAB 7", 28000, 37000, 180, 220, nil, nil, {TAB7_CAP:GetRandomCoordinate()})
  
  
  -- Squadron CAP Intervals -- 

  A2ADispatcherRed:SetSquadronCapInterval( "TAB 1", 1, 240, 480, 1 )
  A2ADispatcherRed:SetSquadronCapInterval( "TAB 2", 1, 240, 480, 1 )
  A2ADispatcherRed:SetSquadronCapInterval( "TAB 3", 1, 60, 240, 1 )
  A2ADispatcherRed:SetSquadronCapInterval( "TAB 4", 1, 240, 480, 1 )
  A2ADispatcherRed:SetSquadronCapInterval( "TAB 5", 1, 30, 60, 1 )
  A2ADispatcherRed:SetSquadronCapInterval( "TAB 6", 1, 30, 60, 1 )
  A2ADispatcherRed:SetSquadronCapInterval( "TAB 7", 1, 60, 240, 1 )
  
  
  -- Setup Squadron GCI -- 

  --A2ADispatcherRed:SetSquadronGci( "TAB 1", 800, 1800 )
  --A2ADispatcherRed:SetSquadronGci( "TAB 2", 800, 1800 )
  --A2ADispatcherRed:SetSquadronGci( "TAB 3", 800, 1800 )
  --A2ADispatcherRed:SetSquadronGci( "TAB 4", 800, 1800 )
  --A2ADispatcherRed:SetSquadronGci( "TAB 5", 800, 1800 )
  --A2ADispatcherRed:SetSquadronGci( "TAB 6", 800, 1800 )
  --A2ADispatcherRed:SetSquadronGci( "TAB 7", 800, 1800 )
  --A2ADispatcherRed:SetSquadronGci( "GCI 1", 1200, 1800 )
  
  -- Squadron Refuelling Setup --

  --A2ADispatcher:SetDefaultTanker ( "TankerEast" )
  A2ADispatcherRed:SetSquadronTanker( "TAB 3", "TankerWest" )
  A2ADispatcherRed:SetSquadronTanker( "TAB 7", "TankerWest" )
  A2ADispatcherRed:SetSquadronTanker( "TAB 5", "TankerEast" )
  A2ADispatcherRed:SetSquadronTanker( "TAB 6", "TankerEast" )
  

  -- Turn Dispatchers On --

  A2ADispatcherRed:Start()
    

  -- Turn Tac Displays On/Off --
  A2ADispatcherRed:SetTacticalDisplay( false )
   
   
  -- Random Air Traffic Settings --

  --local C17=RAT:New("RAT_C17", "NATO Transport")
  --C17:SetDeparture("Al Dhafra AB", "Fujairah Intl")
  --C17:SetDestination("Fujairah Intl", "Al Dhafra AB")
  --C17:Spawn(2)
  --C17:SetSpawnInterval(60)
  --C17:Commute()
  --C17:ATC_Messages(false)
  
  --local C130=RAT:New("RAT_C130", "NATO Troop Transport")
  --C130:SetDeparture("Al Ain International Airport", "Ras AL Khaimah")
  --C130:SetDestination("Ras Al Khaimah", "Al Ain International Airport")
  --C130:SetSpawnInterval(60)
  --C130:Commute()
  --C130:Spawn(2)
  --C130:ATC_Messages(false)
  
  --local Chinook=RAT:New("RAT_Chinook", "NATO Chinook")
  --Chinook:SetCoalition("sameonly")
  --Chinook:SetTerminalType(AIRBASE.TerminalType.HelicopterOnly)
  --Chinook:SetTakeoffAir()
  --Chinook:SetSpawnInterval(120)
  --Chinook:ExcludedAirports("Fujairah Intl")
  --Chinook:Spawn(1)
  --Chinook:ATC_Messages(false)
  
  --local UH60=RAT:New("RAT_UH60", "NATO Black Hawk")
  --UH60:SetCoalition("sameonly")
  --UH60:SetTerminalType(AIRBASE.TerminalType.HelicopterOnly)
  --UH60:SetTakeoffAir()
  --UH60:SetSpawnInterval(120)
  --UH60:ExcludedAirports("Fujairah Intl")
  --UH60:Spawn(1)
  --UH60:ATC_Messages(false)
  
