lbl_804D3FC4:
/* 804D3FC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D3FC8  7C 08 02 A6 */	mflr r0
/* 804D3FCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D3FD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D3FD4  7C 7F 1B 78 */	mr r31, r3
/* 804D3FD8  48 00 2B 05 */	bl Player_actor_dt_forCorect
/* 804D3FDC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804D3FE0  38 00 00 00 */	li r0, 0
/* 804D3FE4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804D3FE8  3C 63 00 03 */	addis r3, r3, 3
/* 804D3FEC  98 03 85 BE */	stb r0, -0x7a42(r3)
/* 804D3FF0  4B F0 7F 5D */	bl mPlib_cancel_player_warp_forEvent
/* 804D3FF4  7F E3 FB 78 */	mr r3, r31
/* 804D3FF8  48 00 A4 59 */	bl Player_actor_Reset_bee_chase
/* 804D3FFC  7F E3 FB 78 */	mr r3, r31
/* 804D4000  48 00 A9 A5 */	bl Player_actor_Check_player_sunburn_for_dt
/* 804D4004  4B EC 6E B5 */	bl mEv_CheckTitleDemo
/* 804D4008  2C 03 00 00 */	cmpwi r3, 0
/* 804D400C  41 81 00 38 */	bgt lbl_804D4044
/* 804D4010  88 7F 11 F9 */	lbz r3, 0x11f9(r31)
/* 804D4014  7C 60 07 75 */	extsb. r0, r3
/* 804D4018  41 82 00 2C */	beq lbl_804D4044
/* 804D401C  7C 60 07 74 */	extsb r0, r3
/* 804D4020  2C 00 00 02 */	cmpwi r0, 2
/* 804D4024  41 82 00 1C */	beq lbl_804D4040
/* 804D4028  40 80 00 1C */	bge lbl_804D4044
/* 804D402C  2C 00 00 01 */	cmpwi r0, 1
/* 804D4030  40 80 00 08 */	bge lbl_804D4038
/* 804D4034  48 00 00 10 */	b lbl_804D4044
lbl_804D4038:
/* 804D4038  4B EA 86 F1 */	bl mBGMPsComp_volume_collect_insects_end
/* 804D403C  48 00 00 08 */	b lbl_804D4044
lbl_804D4040:
/* 804D4040  4B EA 86 C1 */	bl mBGMPsComp_volume_fishing_end
lbl_804D4044:
/* 804D4044  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4048  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D404C  7C 08 03 A6 */	mtlr r0
/* 804D4050  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4054  4E 80 00 20 */	blr 
