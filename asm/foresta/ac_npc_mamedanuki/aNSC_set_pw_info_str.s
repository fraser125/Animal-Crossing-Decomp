lbl_8055AA1C:
/* 8055AA1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055AA20  7C 08 02 A6 */	mflr r0
/* 8055AA24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055AA28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055AA2C  93 C1 00 08 */	stw r30, 8(r1)
/* 8055AA30  7C 7E 1B 78 */	mr r30, r3
/* 8055AA34  4B E6 4C 75 */	bl func_803BF6A8
/* 8055AA38  38 BE 0A 07 */	addi r5, r30, 0xa07
/* 8055AA3C  7C 7F 1B 78 */	mr r31, r3
/* 8055AA40  38 80 00 06 */	li r4, 6
/* 8055AA44  38 C0 00 08 */	li r6, 8
/* 8055AA48  4B E6 52 0D */	bl mMsg_Set_free_str
/* 8055AA4C  7F E3 FB 78 */	mr r3, r31
/* 8055AA50  38 BE 09 FF */	addi r5, r30, 0x9ff
/* 8055AA54  38 80 00 07 */	li r4, 7
/* 8055AA58  38 C0 00 08 */	li r6, 8
/* 8055AA5C  4B E6 51 F9 */	bl mMsg_Set_free_str
/* 8055AA60  A0 7E 09 F8 */	lhz r3, 0x9f8(r30)
/* 8055AA64  38 80 00 02 */	li r4, 2
/* 8055AA68  4B FF FE 99 */	bl aNSC_set_item_name_str
/* 8055AA6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055AA70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055AA74  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055AA78  7C 08 03 A6 */	mtlr r0
/* 8055AA7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8055AA80  4E 80 00 20 */	blr 
