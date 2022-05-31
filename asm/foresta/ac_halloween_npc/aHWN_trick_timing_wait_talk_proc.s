lbl_80527A34:
/* 80527A34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80527A38  7C 08 02 A6 */	mflr r0
/* 80527A3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80527A40  39 61 00 20 */	addi r11, r1, 0x20
/* 80527A44  4B B7 34 91 */	bl func_8009AED4
/* 80527A48  7C 7D 1B 78 */	mr r29, r3
/* 80527A4C  38 60 00 04 */	li r3, 4
/* 80527A50  38 80 00 09 */	li r4, 9
/* 80527A54  4B E7 0A 29 */	bl mDemo_Get_OrderValue
/* 80527A58  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80527A5C  41 82 00 44 */	beq lbl_80527AA0
/* 80527A60  4B E9 7C 49 */	bl func_803BF6A8
/* 80527A64  7C 7E 1B 78 */	mr r30, r3
/* 80527A68  4B FF F9 C9 */	bl func_80527430
/* 80527A6C  2C 03 00 00 */	cmpwi r3, 0
/* 80527A70  3B E0 00 0C */	li r31, 0xc
/* 80527A74  40 82 00 08 */	bne lbl_80527A7C
/* 80527A78  3B E0 00 08 */	li r31, 8
lbl_80527A7C:
/* 80527A7C  7F C3 F3 78 */	mr r3, r30
/* 80527A80  4B E9 92 C1 */	bl mMsg_Set_LockContinue
/* 80527A84  7F A3 EB 78 */	mr r3, r29
/* 80527A88  7F E4 FB 78 */	mr r4, r31
/* 80527A8C  48 00 02 69 */	bl aHWN_change_talk_proc
/* 80527A90  38 60 00 04 */	li r3, 4
/* 80527A94  38 80 00 09 */	li r4, 9
/* 80527A98  38 A0 00 00 */	li r5, 0
/* 80527A9C  4B E7 09 9D */	bl mDemo_Set_OrderValue
lbl_80527AA0:
/* 80527AA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80527AA4  4B B7 34 7D */	bl func_8009AF20
/* 80527AA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80527AAC  7C 08 03 A6 */	mtlr r0
/* 80527AB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80527AB4  4E 80 00 20 */	blr 
