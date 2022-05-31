lbl_80495318:
/* 80495318  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049531C  7C 08 02 A6 */	mflr r0
/* 80495320  90 01 00 24 */	stw r0, 0x24(r1)
/* 80495324  39 61 00 20 */	addi r11, r1, 0x20
/* 80495328  4B C0 5B A5 */	bl func_8009AECC
/* 8049532C  3C A0 81 1D */	lis r5, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 80495330  3C 80 80 69 */	lis r4, base_str_no_1580@ha /* 0x8068B8E8@ha */
/* 80495334  3C 60 80 64 */	lis r3, lit_1576@ha /* 0x80644C90@ha */
/* 80495338  3B 60 00 00 */	li r27, 0
/* 8049533C  3B 85 EC 94 */	addi r28, r5, l_aqmgr_str@l /* 0x811CEC94@l */
/* 80495340  3B A4 B8 E8 */	addi r29, r4, base_str_no_1580@l /* 0x8068B8E8@l */
/* 80495344  3B C3 4C 90 */	addi r30, r3, lit_1576@l /* 0x80644C90@l */
/* 80495348  3B E0 00 00 */	li r31, 0
lbl_8049534C:
/* 8049534C  7C BD F8 2E */	lwzx r5, r29, r31
/* 80495350  7F 83 E3 78 */	mr r3, r28
/* 80495354  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80495358  7F 64 DB 78 */	mr r4, r27
/* 8049535C  38 C0 FF FF */	li r6, -1
/* 80495360  4B FF FD 01 */	bl aQMgr_set_random_string
/* 80495364  3B 7B 00 01 */	addi r27, r27, 1
/* 80495368  3B FF 00 04 */	addi r31, r31, 4
/* 8049536C  2C 1B 00 03 */	cmpwi r27, 3
/* 80495370  41 80 FF DC */	blt lbl_8049534C
/* 80495374  39 61 00 20 */	addi r11, r1, 0x20
/* 80495378  4B C0 5B A1 */	bl func_8009AF18
/* 8049537C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80495380  7C 08 03 A6 */	mtlr r0
/* 80495384  38 21 00 20 */	addi r1, r1, 0x20
/* 80495388  4E 80 00 20 */	blr 
