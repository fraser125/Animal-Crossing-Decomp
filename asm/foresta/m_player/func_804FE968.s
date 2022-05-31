lbl_804FE968:
/* 804FE968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FE96C  7C 08 02 A6 */	mflr r0
/* 804FE970  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FE974  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FE978  7C 9F 23 78 */	mr r31, r4
/* 804FE97C  7F E5 FB 78 */	mr r5, r31
/* 804FE980  38 80 00 52 */	li r4, 0x52
/* 804FE984  93 C1 00 08 */	stw r30, 8(r1)
/* 804FE988  7C 7E 1B 78 */	mr r30, r3
/* 804FE98C  4B FD BA CD */	bl Player_actor_check_request_main_able
/* 804FE990  2C 03 00 00 */	cmpwi r3, 0
/* 804FE994  41 82 00 1C */	beq lbl_804FE9B0
/* 804FE998  7F C3 F3 78 */	mr r3, r30
/* 804FE99C  7F E5 FB 78 */	mr r5, r31
/* 804FE9A0  38 80 00 52 */	li r4, 0x52
/* 804FE9A4  4B FD 66 71 */	bl Player_actor_request_main_index
/* 804FE9A8  38 60 00 01 */	li r3, 1
/* 804FE9AC  48 00 00 08 */	b lbl_804FE9B4
lbl_804FE9B0:
/* 804FE9B0  38 60 00 00 */	li r3, 0
lbl_804FE9B4:
/* 804FE9B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FE9B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FE9BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FE9C0  7C 08 03 A6 */	mtlr r0
/* 804FE9C4  38 21 00 10 */	addi r1, r1, 0x10
/* 804FE9C8  4E 80 00 20 */	blr 
