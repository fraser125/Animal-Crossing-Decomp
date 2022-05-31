lbl_80487A44:
/* 80487A44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80487A48  7C 08 02 A6 */	mflr r0
/* 80487A4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80487A50  39 61 00 20 */	addi r11, r1, 0x20
/* 80487A54  4B C1 34 7D */	bl func_8009AED0
/* 80487A58  80 83 01 78 */	lwz r4, 0x178(r3)
/* 80487A5C  3B C3 02 14 */	addi r30, r3, 0x214
/* 80487A60  3B A0 FF FF */	li r29, -1
/* 80487A64  80 64 00 00 */	lwz r3, 0(r4)
/* 80487A68  83 E3 01 7C */	lwz r31, 0x17c(r3)
/* 80487A6C  28 1F 00 00 */	cmplwi r31, 0
/* 80487A70  41 82 00 40 */	beq lbl_80487AB0
/* 80487A74  3B 80 00 00 */	li r28, 0
lbl_80487A78:
/* 80487A78  80 1E 00 08 */	lwz r0, 8(r30)
/* 80487A7C  28 00 00 00 */	cmplwi r0, 0
/* 80487A80  41 82 00 20 */	beq lbl_80487AA0
/* 80487A84  7F E3 FB 78 */	mr r3, r31
/* 80487A88  38 9E 00 1E */	addi r4, r30, 0x1e
/* 80487A8C  4B F4 39 E5 */	bl mNpc_CheckCmpAnimalPersonalID
/* 80487A90  2C 03 00 01 */	cmpwi r3, 1
/* 80487A94  40 82 00 0C */	bne lbl_80487AA0
/* 80487A98  7F 9D E3 78 */	mr r29, r28
/* 80487A9C  48 00 00 14 */	b lbl_80487AB0
lbl_80487AA0:
/* 80487AA0  3B 9C 00 01 */	addi r28, r28, 1
/* 80487AA4  3B DE 00 34 */	addi r30, r30, 0x34
/* 80487AA8  2C 1C 00 23 */	cmpwi r28, 0x23
/* 80487AAC  41 80 FF CC */	blt lbl_80487A78
lbl_80487AB0:
/* 80487AB0  7F A3 EB 78 */	mr r3, r29
/* 80487AB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80487AB8  4B C1 34 65 */	bl func_8009AF1C
/* 80487ABC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80487AC0  7C 08 03 A6 */	mtlr r0
/* 80487AC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80487AC8  4E 80 00 20 */	blr 
