lbl_804154EC:
/* 804154EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804154F0  7C 08 02 A6 */	mflr r0
/* 804154F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804154F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804154FC  7C 9F 23 78 */	mr r31, r4
/* 80415500  93 C1 00 08 */	stw r30, 8(r1)
/* 80415504  7C 7E 1B 78 */	mr r30, r3
/* 80415508  4B FA A1 A1 */	bl func_803BF6A8
/* 8041550C  4B FA AA C1 */	bl mMsg_Get_msg_num
/* 80415510  80 1E 01 B4 */	lwz r0, 0x1b4(r30)
/* 80415514  7C 03 00 00 */	cmpw r3, r0
/* 80415518  40 82 00 14 */	bne lbl_8041552C
/* 8041551C  7F C3 F3 78 */	mr r3, r30
/* 80415520  7F E4 FB 78 */	mr r4, r31
/* 80415524  38 A0 00 08 */	li r5, 8
/* 80415528  48 00 05 19 */	bl aBTD_setupAction
lbl_8041552C:
/* 8041552C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80415530  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80415534  83 C1 00 08 */	lwz r30, 8(r1)
/* 80415538  7C 08 03 A6 */	mtlr r0
/* 8041553C  38 21 00 10 */	addi r1, r1, 0x10
/* 80415540  4E 80 00 20 */	blr 