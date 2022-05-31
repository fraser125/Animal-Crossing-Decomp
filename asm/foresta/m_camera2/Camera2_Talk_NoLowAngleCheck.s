lbl_8037FB60:
/* 8037FB60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8037FB64  7C 08 02 A6 */	mflr r0
/* 8037FB68  90 01 00 34 */	stw r0, 0x34(r1)
/* 8037FB6C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8037FB70  7C 9F 23 78 */	mr r31, r4
/* 8037FB74  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8037FB78  7C 7E 1B 78 */	mr r30, r3
/* 8037FB7C  4B FF DE E9 */	bl Camera2_InDoorCheck
/* 8037FB80  2C 03 00 00 */	cmpwi r3, 0
/* 8037FB84  41 82 00 0C */	beq lbl_8037FB90
/* 8037FB88  38 60 00 00 */	li r3, 0
/* 8037FB8C  48 00 00 48 */	b lbl_8037FBD4
lbl_8037FB90:
/* 8037FB90  80 DF 00 00 */	lwz r6, 0(r31)
/* 8037FB94  38 61 00 14 */	addi r3, r1, 0x14
/* 8037FB98  81 1F 00 04 */	lwz r8, 4(r31)
/* 8037FB9C  38 81 00 10 */	addi r4, r1, 0x10
/* 8037FBA0  80 1F 00 08 */	lwz r0, 8(r31)
/* 8037FBA4  38 A1 00 0C */	addi r5, r1, 0xc
/* 8037FBA8  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8037FBAC  38 C1 00 08 */	addi r6, r1, 8
/* 8037FBB0  38 E1 00 18 */	addi r7, r1, 0x18
/* 8037FBB4  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8037FBB8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8037FBBC  48 02 5C 05 */	bl mFI_Wpos2BkandUtNuminBlock
/* 8037FBC0  7F C3 F3 78 */	mr r3, r30
/* 8037FBC4  7F E4 FB 78 */	mr r4, r31
/* 8037FBC8  4B FF FE B5 */	bl Camera2_Talk_CheckCliffLR
/* 8037FBCC  30 03 FF FF */	addic r0, r3, -1
/* 8037FBD0  7C 60 19 10 */	subfe r3, r0, r3
lbl_8037FBD4:
/* 8037FBD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8037FBD8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8037FBDC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8037FBE0  7C 08 03 A6 */	mtlr r0
/* 8037FBE4  38 21 00 30 */	addi r1, r1, 0x30
/* 8037FBE8  4E 80 00 20 */	blr 
