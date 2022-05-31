lbl_8054FDA8:
/* 8054FDA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054FDAC  7C 08 02 A6 */	mflr r0
/* 8054FDB0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8054FDB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054FDB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054FDBC  7C 9F 23 78 */	mr r31, r4
/* 8054FDC0  93 C1 00 08 */	stw r30, 8(r1)
/* 8054FDC4  7C 7E 1B 78 */	mr r30, r3
/* 8054FDC8  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8054FDCC  3C 63 00 02 */	addis r3, r3, 2
/* 8054FDD0  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 8054FDD4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8054FDD8  28 00 00 00 */	cmplwi r0, 0
/* 8054FDDC  40 82 00 1C */	bne lbl_8054FDF8
/* 8054FDE0  4B E6 F8 C9 */	bl func_803BF6A8
/* 8054FDE4  4B E7 0F 69 */	bl mMsg_Unset_LockContinue
/* 8054FDE8  7F C3 F3 78 */	mr r3, r30
/* 8054FDEC  7F E4 FB 78 */	mr r4, r31
/* 8054FDF0  38 A0 00 02 */	li r5, 2
/* 8054FDF4  48 00 2A 41 */	bl aNSC_setupAction
lbl_8054FDF8:
/* 8054FDF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054FDFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054FE00  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054FE04  7C 08 03 A6 */	mtlr r0
/* 8054FE08  38 21 00 10 */	addi r1, r1, 0x10
/* 8054FE0C  4E 80 00 20 */	blr 
