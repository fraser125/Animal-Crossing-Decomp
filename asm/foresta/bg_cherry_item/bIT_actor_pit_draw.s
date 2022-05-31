lbl_804B6B34:
/* 804B6B34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804B6B38  7C 08 02 A6 */	mflr r0
/* 804B6B3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B6B40  39 61 00 20 */	addi r11, r1, 0x20
/* 804B6B44  4B BE 43 8D */	bl func_8009AED0
/* 804B6B48  7C 7C 1B 78 */	mr r28, r3
/* 804B6B4C  7C 9D 23 78 */	mr r29, r4
/* 804B6B50  7C BE 2B 78 */	mr r30, r5
/* 804B6B54  3B E0 00 00 */	li r31, 0
lbl_804B6B58:
/* 804B6B58  A0 1E 00 12 */	lhz r0, 0x12(r30)
/* 804B6B5C  28 00 00 00 */	cmplwi r0, 0
/* 804B6B60  41 82 00 2C */	beq lbl_804B6B8C
/* 804B6B64  A8 1E 00 10 */	lha r0, 0x10(r30)
/* 804B6B68  2C 00 00 00 */	cmpwi r0, 0
/* 804B6B6C  41 82 00 20 */	beq lbl_804B6B8C
/* 804B6B70  7F 83 E3 78 */	mr r3, r28
/* 804B6B74  7F A4 EB 78 */	mr r4, r29
/* 804B6B78  7F C5 F3 78 */	mr r5, r30
/* 804B6B7C  38 C0 00 00 */	li r6, 0
/* 804B6B80  38 E0 00 00 */	li r7, 0
/* 804B6B84  39 00 00 00 */	li r8, 0
/* 804B6B88  4B FF FF 49 */	bl bIT_actor_pit_draw_nrm
lbl_804B6B8C:
/* 804B6B8C  3B FF 00 01 */	addi r31, r31, 1
/* 804B6B90  3B DE 00 1C */	addi r30, r30, 0x1c
/* 804B6B94  2C 1F 00 0D */	cmpwi r31, 0xd
/* 804B6B98  41 80 FF C0 */	blt lbl_804B6B58
/* 804B6B9C  39 61 00 20 */	addi r11, r1, 0x20
/* 804B6BA0  4B BE 43 7D */	bl func_8009AF1C
/* 804B6BA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B6BA8  7C 08 03 A6 */	mtlr r0
/* 804B6BAC  38 21 00 20 */	addi r1, r1, 0x20
/* 804B6BB0  4E 80 00 20 */	blr 
