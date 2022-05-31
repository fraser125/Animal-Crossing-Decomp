lbl_80523DE4:
/* 80523DE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80523DE8  7C 08 02 A6 */	mflr r0
/* 80523DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80523DF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80523DF4  7C 7F 1B 78 */	mr r31, r3
/* 80523DF8  4B FF FF 61 */	bl aESNT_getP_talk_data
/* 80523DFC  38 60 00 3D */	li r3, 0x3d
/* 80523E00  38 80 00 40 */	li r4, 0x40
/* 80523E04  4B E7 9B CD */	bl mEv_set_status
/* 80523E08  80 7F 09 A4 */	lwz r3, 0x9a4(r31)
/* 80523E0C  80 63 00 00 */	lwz r3, 0(r3)
/* 80523E10  4B E7 47 05 */	bl mDemo_Set_msg_num
/* 80523E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80523E18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80523E1C  7C 08 03 A6 */	mtlr r0
/* 80523E20  38 21 00 10 */	addi r1, r1, 0x10
/* 80523E24  4E 80 00 20 */	blr 
