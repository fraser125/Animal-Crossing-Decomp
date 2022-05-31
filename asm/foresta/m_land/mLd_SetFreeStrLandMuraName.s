lbl_803B3A08:
/* 803B3A08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B3A0C  7C 08 02 A6 */	mflr r0
/* 803B3A10  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B3A14  38 00 00 0A */	li r0, 0xa
/* 803B3A18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B3A1C  7C 7F 1B 78 */	mr r31, r3
/* 803B3A20  38 61 00 08 */	addi r3, r1, 8
/* 803B3A24  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803B3A28  7C 9E 23 78 */	mr r30, r4
/* 803B3A2C  38 80 00 20 */	li r4, 0x20
/* 803B3A30  7C 09 03 A6 */	mtctr r0
lbl_803B3A34:
/* 803B3A34  98 83 00 00 */	stb r4, 0(r3)
/* 803B3A38  38 63 00 01 */	addi r3, r3, 1
/* 803B3A3C  42 00 FF F8 */	bdnz lbl_803B3A34
/* 803B3A40  7F E3 FB 78 */	mr r3, r31
/* 803B3A44  38 80 00 08 */	li r4, 8
/* 803B3A48  48 00 D2 1D */	bl mMsg_Get_Length_String
/* 803B3A4C  7F E4 FB 78 */	mr r4, r31
/* 803B3A50  7C 7F 1B 78 */	mr r31, r3
/* 803B3A54  38 61 00 08 */	addi r3, r1, 8
/* 803B3A58  7F E5 FB 78 */	mr r5, r31
/* 803B3A5C  48 00 6F C9 */	bl func_803BAA24
/* 803B3A60  7F E4 FB 78 */	mr r4, r31
/* 803B3A64  38 61 00 08 */	addi r3, r1, 8
/* 803B3A68  4B FF FE AD */	bl mLd_AddMuraString
/* 803B3A6C  7C 7F 1B 78 */	mr r31, r3
/* 803B3A70  48 00 BC 39 */	bl func_803BF6A8
/* 803B3A74  7F C4 F3 78 */	mr r4, r30
/* 803B3A78  7F E6 FB 78 */	mr r6, r31
/* 803B3A7C  38 A1 00 08 */	addi r5, r1, 8
/* 803B3A80  48 00 C1 D5 */	bl mMsg_Set_free_str
/* 803B3A84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B3A88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B3A8C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803B3A90  7C 08 03 A6 */	mtlr r0
/* 803B3A94  38 21 00 20 */	addi r1, r1, 0x20
/* 803B3A98  4E 80 00 20 */	blr 
