lbl_80569B2C:
/* 80569B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80569B30  7C 08 02 A6 */	mflr r0
/* 80569B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80569B38  80 03 09 94 */	lwz r0, 0x994(r3)
/* 80569B3C  38 64 1D EC */	addi r3, r4, 0x1dec
/* 80569B40  2C 00 00 12 */	cmpwi r0, 0x12
/* 80569B44  41 82 00 08 */	beq lbl_80569B4C
/* 80569B48  48 00 00 14 */	b lbl_80569B5C
lbl_80569B4C:
/* 80569B4C  38 80 00 03 */	li r4, 3
/* 80569B50  38 A0 00 00 */	li r5, 0
/* 80569B54  38 C0 00 00 */	li r6, 0
/* 80569B58  4B E8 5B 85 */	bl mSM_open_submenu
lbl_80569B5C:
/* 80569B5C  4B E5 5B 4D */	bl func_803BF6A8
/* 80569B60  4B E5 60 29 */	bl mMsg_request_main_appear_wait_type1
/* 80569B64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80569B68  7C 08 03 A6 */	mtlr r0
/* 80569B6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80569B70  4E 80 00 20 */	blr 
