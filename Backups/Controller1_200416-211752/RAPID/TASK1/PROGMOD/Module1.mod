MODULE Module1
	CONST robtarget Target_10:=[[1080,0,908.028317799],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_20_2:=[[1350,150,670.31163825],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_20:=[[1350,150,565],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_30_2:=[[-450,1650,335.435889427],[0,0,1,0],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_30:=[[-450,1650,295],[0,0,1,0],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50:=[[1004.83,437.65,900],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !***********************************************************
    !
    ! Module:  Module1
    !
    ! Description:
    !   <Insert description here>
    !
    ! Author: Patrik
    !
    ! Version: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedure main
    !
    !   This is the entry point of your program
    !
    !***********************************************************
    PROC main()
        Path_10;
    ENDPROC
	PROC Path_10()
        FOR y FROM 1650 TO 1350 STEP -300 DO
            FOR x FROM -450 TO 150 STEP 300 DO
                PulseDO zajeb_box;
        	    MoveL Target_10,v1000,z100,vac_gripper\WObj:=wobj0;
        	    MoveL Target_20_2,v1000,fine,vac_gripper\WObj:=wobj0;
        	    MoveL Target_20_2,v500,z100,vac_gripper\WObj:=wobj0;
        	    MoveL Target_20,v300,fine,vac_gripper\WObj:=wobj0;
        	    PulseDO vezmi_box;
        	    WaitTime 1;
        	    MoveL Target_20_2,v1000,fine,vac_gripper\WObj:=wobj0;
        	    MoveL Target_50,v1000,z200,vac_gripper\WObj:=wobj0;
        	    MoveL [[x,y,335.435889427],[0,0,1,0],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],v1000,z100,vac_gripper\WObj:=wobj0;
        	    MoveL [[x,y,295],[0,0,1,0],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],v300,fine,vac_gripper\WObj:=wobj0;
        	    PulseDO poloz_box;
        	    WaitTime 1;
        	    MoveL [[x,y,335.435889427],[0,0,1,0],[1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],v1000,fine,vac_gripper\WObj:=wobj0;
        	    MoveL Target_10,v2000,z100,vac_gripper\WObj:=wobj0;
            ENDFOR
        ENDFOR
	ENDPROC
ENDMODULE