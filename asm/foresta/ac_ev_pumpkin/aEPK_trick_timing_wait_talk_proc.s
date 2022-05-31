lbl_80522E24:
/* 80522E24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80522E28  7C 08 02 A6 */	mflr r0
/* 80522E2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80522E30  39 61 00 20 */	addi r11, r1, 0x20
/* 80522E34  4B B7 80 A1 */	bl func_8009AED4
/* 80522E38  7C 7D 1B 78 */	mr r29, r3
/* 80522E3C  38 60 00 04 */	li r3, 4
/* 80522E40  38 80 00 09 */	li r4, 9
/* 80522E44  4B E7 56 39 */	bl mDemo_Get_OrderValue
/* 80522E48  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80522E4C  41 82 00 44 */	beq lbl_80522E90
/* 80522E50  4B E9 C8 59 */	bl func_803BF6A8
/* 80522E54  7C 7E 1B 78 */	mr r30, r3
/* 80522E58  4B FF F9 61 */	bl func_805227B8
/* 80522E5C  2C 03 00 00 */	cmpwi r3, 0
/* 80522E60  3B E0 00 0E */	li r31, 0xe
/* 80522E64  40 82 00 08 */	bne lbl_80522E6C
/* 80522E68  3B E0 00 08 */	li r31, 8
lbl_80522E6C:
/* 80522E6C  7F C3 F3 78 */	mr r3, r30
/* 80522E70  4B E9 DE D1 */	bl mMsg_Set_LockContinue
/* 80522E74  7F A3 EB 78 */	mr r3, r29
/* 80522E78  7F E4 FB 78 */	mr r4, r31
/* 80522E7C  48 00 03 65 */	bl aEPK_change_talk_proc
/* 80522E80  38 60 00 04 */	li r3, 4
/* 80522E84  38 80 00 09 */	li r4, 9
/* 80522E88  38 A0 00 00 */	li r5, 0
/* 80522E8C  4B E7 55 AD */	bl mDemo_Set_OrderValue
lbl_80522E90:
/* 80522E90  39 61 00 20 */	addi r11, r1, 0x20
/* 80522E94  4B B7 80 8D */	bl func_8009AF20
/* 80522E98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80522E9C  7C 08 03 A6 */	mtlr r0
/* 80522EA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80522EA4  4E 80 00 20 */	blr 
