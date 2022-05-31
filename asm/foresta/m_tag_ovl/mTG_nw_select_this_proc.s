lbl_805F3970:
/* 805F3970  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F3974  7C 08 02 A6 */	mflr r0
/* 805F3978  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F397C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F3980  7C 9F 23 78 */	mr r31, r4
/* 805F3984  93 C1 00 08 */	stw r30, 8(r1)
/* 805F3988  7C 7E 1B 78 */	mr r30, r3
/* 805F398C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F3990  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805F3994  38 63 00 08 */	addi r3, r3, 8
/* 805F3998  4B FF C1 C9 */	bl mTG_get_table_idx
/* 805F399C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 805F39A0  80 DE 01 74 */	lwz r6, 0x174(r30)
/* 805F39A4  38 84 FF FF */	addi r4, r4, 0xFFFF /* 0x0000FFFF@l */
/* 805F39A8  38 00 00 01 */	li r0, 1
/* 805F39AC  B0 86 00 00 */	sth r4, 0(r6)
/* 805F39B0  7F E4 FB 78 */	mr r4, r31
/* 805F39B4  38 A0 00 01 */	li r5, 1
/* 805F39B8  98 66 00 02 */	stb r3, 2(r6)
/* 805F39BC  7F C3 F3 78 */	mr r3, r30
/* 805F39C0  B0 1E 01 7A */	sth r0, 0x17a(r30)
/* 805F39C4  4B FF F6 51 */	bl mTG_close_window
/* 805F39C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F39CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F39D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F39D4  7C 08 03 A6 */	mtlr r0
/* 805F39D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805F39DC  4E 80 00 20 */	blr 
