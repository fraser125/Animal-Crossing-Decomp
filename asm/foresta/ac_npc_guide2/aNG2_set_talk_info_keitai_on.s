lbl_80555DE0:
/* 80555DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80555DE4  7C 08 02 A6 */	mflr r0
/* 80555DE8  38 60 2A DE */	li r3, 0x2ade
/* 80555DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80555DF0  4B E4 27 25 */	bl mDemo_Set_msg_num
/* 80555DF4  4B FF F6 E5 */	bl aNG2_set_default_talk_info
/* 80555DF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80555DFC  7C 08 03 A6 */	mtlr r0
/* 80555E00  38 21 00 10 */	addi r1, r1, 0x10
/* 80555E04  4E 80 00 20 */	blr 
