lbl_80581240:
/* 80581240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80581244  7C 08 02 A6 */	mflr r0
/* 80581248  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058124C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80581250  93 C1 00 08 */	stw r30, 8(r1)
/* 80581254  7C 7E 1B 78 */	mr r30, r3
/* 80581258  4B E3 E4 51 */	bl func_803BF6A8
/* 8058125C  38 BE 0A 07 */	addi r5, r30, 0xa07
/* 80581260  7C 7F 1B 78 */	mr r31, r3
/* 80581264  38 80 00 06 */	li r4, 6
/* 80581268  38 C0 00 08 */	li r6, 8
/* 8058126C  4B E3 E9 E9 */	bl mMsg_Set_free_str
/* 80581270  7F E3 FB 78 */	mr r3, r31
/* 80581274  38 BE 09 FF */	addi r5, r30, 0x9ff
/* 80581278  38 80 00 07 */	li r4, 7
/* 8058127C  38 C0 00 08 */	li r6, 8
/* 80581280  4B E3 E9 D5 */	bl mMsg_Set_free_str
/* 80581284  A0 7E 09 F8 */	lhz r3, 0x9f8(r30)
/* 80581288  38 80 00 02 */	li r4, 2
/* 8058128C  4B FF FE 99 */	bl aNSC_set_item_name_str
/* 80581290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80581294  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80581298  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058129C  7C 08 03 A6 */	mtlr r0
/* 805812A0  38 21 00 10 */	addi r1, r1, 0x10
/* 805812A4  4E 80 00 20 */	blr 
