lbl_8051CDA8:
/* 8051CDA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051CDAC  7C 08 02 A6 */	mflr r0
/* 8051CDB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051CDB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051CDB8  7C 9F 23 78 */	mr r31, r4
/* 8051CDBC  93 C1 00 08 */	stw r30, 8(r1)
/* 8051CDC0  7C 7E 1B 78 */	mr r30, r3
/* 8051CDC4  88 03 09 A6 */	lbz r0, 0x9a6(r3)
/* 8051CDC8  28 00 00 01 */	cmplwi r0, 1
/* 8051CDCC  40 82 00 20 */	bne lbl_8051CDEC
/* 8051CDD0  38 60 00 01 */	li r3, 1
/* 8051CDD4  4B E7 BB 4D */	bl mDemo_Set_camera
/* 8051CDD8  7F E3 FB 78 */	mr r3, r31
/* 8051CDDC  38 80 00 00 */	li r4, 0
/* 8051CDE0  4B E6 1C E5 */	bl Camera2_change_priority
/* 8051CDE4  38 00 00 00 */	li r0, 0
/* 8051CDE8  98 1E 09 A6 */	stb r0, 0x9a6(r30)
lbl_8051CDEC:
/* 8051CDEC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051CDF0  7F C3 F3 78 */	mr r3, r30
/* 8051CDF4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8051CDF8  7F E4 FB 78 */	mr r4, r31
/* 8051CDFC  3C A5 00 02 */	addis r5, r5, 2
/* 8051CE00  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8051CE04  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 8051CE08  7D 89 03 A6 */	mtctr r12
/* 8051CE0C  4E 80 04 21 */	bctrl 
/* 8051CE10  7F C4 F3 78 */	mr r4, r30
/* 8051CE14  38 60 00 4C */	li r3, 0x4c
/* 8051CE18  4B E8 17 1D */	bl mEv_actor_dying_message
/* 8051CE1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051CE20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051CE24  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051CE28  7C 08 03 A6 */	mtlr r0
/* 8051CE2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051CE30  4E 80 00 20 */	blr 
