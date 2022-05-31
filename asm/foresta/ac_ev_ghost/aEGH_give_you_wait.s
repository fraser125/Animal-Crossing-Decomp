lbl_8051FD58:
/* 8051FD58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051FD5C  7C 08 02 A6 */	mflr r0
/* 8051FD60  38 80 00 01 */	li r4, 1
/* 8051FD64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051FD68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051FD6C  7C 7F 1B 78 */	mr r31, r3
/* 8051FD70  38 60 00 04 */	li r3, 4
/* 8051FD74  4B E7 87 09 */	bl mDemo_Get_OrderValue
/* 8051FD78  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8051FD7C  2C 00 00 02 */	cmpwi r0, 2
/* 8051FD80  40 82 00 5C */	bne lbl_8051FDDC
/* 8051FD84  A0 BF 09 9C */	lhz r5, 0x99c(r31)
/* 8051FD88  38 60 00 05 */	li r3, 5
/* 8051FD8C  38 80 00 00 */	li r4, 0
/* 8051FD90  4B E7 86 A9 */	bl mDemo_Set_OrderValue
/* 8051FD94  38 60 00 05 */	li r3, 5
/* 8051FD98  38 80 00 01 */	li r4, 1
/* 8051FD9C  38 A0 00 07 */	li r5, 7
/* 8051FDA0  4B E7 86 99 */	bl mDemo_Set_OrderValue
/* 8051FDA4  38 60 00 05 */	li r3, 5
/* 8051FDA8  38 80 00 02 */	li r4, 2
/* 8051FDAC  38 A0 00 00 */	li r5, 0
/* 8051FDB0  4B E7 86 89 */	bl mDemo_Set_OrderValue
/* 8051FDB4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051FDB8  A0 9F 09 9C */	lhz r4, 0x99c(r31)
/* 8051FDBC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051FDC0  38 A0 00 00 */	li r5, 0
/* 8051FDC4  3C 63 00 02 */	addis r3, r3, 2
/* 8051FDC8  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8051FDCC  4B EC 11 3D */	bl mPr_SetFreePossessionItem
/* 8051FDD0  7F E3 FB 78 */	mr r3, r31
/* 8051FDD4  38 80 00 00 */	li r4, 0
/* 8051FDD8  48 00 00 19 */	bl aEGH_change_talk_proc
lbl_8051FDDC:
/* 8051FDDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051FDE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051FDE4  7C 08 03 A6 */	mtlr r0
/* 8051FDE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8051FDEC  4E 80 00 20 */	blr 
