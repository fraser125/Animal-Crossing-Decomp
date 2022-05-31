lbl_8055E3A0:
/* 8055E3A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055E3A4  7C 08 02 A6 */	mflr r0
/* 8055E3A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055E3AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055E3B0  7C 7F 1B 78 */	mr r31, r3
/* 8055E3B4  38 60 00 08 */	li r3, 8
/* 8055E3B8  93 C1 00 08 */	stw r30, 8(r1)
/* 8055E3BC  7C 9E 23 78 */	mr r30, r4
/* 8055E3C0  7F E4 FB 78 */	mr r4, r31
/* 8055E3C4  4B E3 BE A1 */	bl mDemo_Check
/* 8055E3C8  2C 03 00 01 */	cmpwi r3, 1
/* 8055E3CC  40 82 00 48 */	bne lbl_8055E414
/* 8055E3D0  4B E3 C0 41 */	bl mDemo_Check_ListenAble
/* 8055E3D4  2C 03 00 00 */	cmpwi r3, 0
/* 8055E3D8  40 82 00 50 */	bne lbl_8055E428
/* 8055E3DC  A8 9F 09 A6 */	lha r4, 0x9a6(r31)
/* 8055E3E0  38 7F 00 DE */	addi r3, r31, 0xde
/* 8055E3E4  38 A0 08 00 */	li r5, 0x800
/* 8055E3E8  4B E5 C7 5D */	bl chase_angle
/* 8055E3EC  2C 03 00 01 */	cmpwi r3, 1
/* 8055E3F0  40 82 00 38 */	bne lbl_8055E428
/* 8055E3F4  4B E1 E7 8D */	bl mBGMForce_room_nonstop_start
/* 8055E3F8  7F E3 FB 78 */	mr r3, r31
/* 8055E3FC  4B FF C1 39 */	bl aNSC_Set_ListenAble
/* 8055E400  7F E3 FB 78 */	mr r3, r31
/* 8055E404  7F C4 F3 78 */	mr r4, r30
/* 8055E408  38 A0 00 45 */	li r5, 0x45
/* 8055E40C  48 00 09 C5 */	bl aNSC_setupAction
/* 8055E410  48 00 00 18 */	b lbl_8055E428
lbl_8055E414:
/* 8055E414  3C 60 80 56 */	lis r3, aNSC_set_talk_info_goodbye_wait@ha /* 0x8055E370@ha */
/* 8055E418  7F E4 FB 78 */	mr r4, r31
/* 8055E41C  38 A3 E3 70 */	addi r5, r3, aNSC_set_talk_info_goodbye_wait@l /* 0x8055E370@l */
/* 8055E420  38 60 00 08 */	li r3, 8
/* 8055E424  4B E3 BD 39 */	bl mDemo_Request
lbl_8055E428:
/* 8055E428  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055E42C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055E430  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055E434  7C 08 03 A6 */	mtlr r0
/* 8055E438  38 21 00 10 */	addi r1, r1, 0x10
/* 8055E43C  4E 80 00 20 */	blr 
