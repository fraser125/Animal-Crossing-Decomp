lbl_8056D2A0:
/* 8056D2A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056D2A4  7C 08 02 A6 */	mflr r0
/* 8056D2A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056D2AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8056D2B0  7C 9F 23 78 */	mr r31, r4
/* 8056D2B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8056D2B8  7C 7E 1B 78 */	mr r30, r3
/* 8056D2BC  88 04 1F 4E */	lbz r0, 0x1f4e(r4)
/* 8056D2C0  28 00 00 00 */	cmplwi r0, 0
/* 8056D2C4  40 82 00 78 */	bne lbl_8056D33C
/* 8056D2C8  38 80 2D E2 */	li r4, 0x2de2
/* 8056D2CC  4B FF F1 DD */	bl aPG_ChangeMsgData
/* 8056D2D0  4B E5 23 D9 */	bl func_803BF6A8
/* 8056D2D4  4B E5 3A 55 */	bl mMsg_Set_ForceNext
/* 8056D2D8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8056D2DC  38 61 00 08 */	addi r3, r1, 8
/* 8056D2E0  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8056D2E4  38 80 00 0B */	li r4, 0xb
/* 8056D2E8  3C A5 00 02 */	addis r5, r5, 2
/* 8056D2EC  38 C0 00 09 */	li r6, 9
/* 8056D2F0  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 8056D2F4  38 E0 00 01 */	li r7, 1
/* 8056D2F8  39 00 00 00 */	li r8, 0
/* 8056D2FC  39 20 00 01 */	li r9, 1
/* 8056D300  80 A5 12 2C */	lwz r5, 0x122c(r5)
/* 8056D304  4B E4 21 75 */	bl mFont_UnintToString
/* 8056D308  4B E5 23 A1 */	bl func_803BF6A8
/* 8056D30C  38 A1 00 08 */	addi r5, r1, 8
/* 8056D310  38 80 00 03 */	li r4, 3
/* 8056D314  38 C0 00 0B */	li r6, 0xb
/* 8056D318  4B E5 29 3D */	bl mMsg_Set_free_str
/* 8056D31C  38 00 00 1C */	li r0, 0x1c
/* 8056D320  7F C3 F3 78 */	mr r3, r30
/* 8056D324  90 1E 09 98 */	stw r0, 0x998(r30)
/* 8056D328  7F E4 FB 78 */	mr r4, r31
/* 8056D32C  38 A0 00 1B */	li r5, 0x1b
/* 8056D330  81 9E 09 A0 */	lwz r12, 0x9a0(r30)
/* 8056D334  7D 89 03 A6 */	mtctr r12
/* 8056D338  4E 80 04 21 */	bctrl 
lbl_8056D33C:
/* 8056D33C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056D340  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8056D344  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8056D348  7C 08 03 A6 */	mtlr r0
/* 8056D34C  38 21 00 20 */	addi r1, r1, 0x20
/* 8056D350  4E 80 00 20 */	blr 
