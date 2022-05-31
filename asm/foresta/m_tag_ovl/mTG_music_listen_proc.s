lbl_805F4E08:
/* 805F4E08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F4E0C  7C 08 02 A6 */	mflr r0
/* 805F4E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F4E14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F4E18  7C 9F 23 78 */	mr r31, r4
/* 805F4E1C  93 C1 00 08 */	stw r30, 8(r1)
/* 805F4E20  7C 7E 1B 78 */	mr r30, r3
/* 805F4E24  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F4E28  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805F4E2C  38 63 00 08 */	addi r3, r3, 8
/* 805F4E30  4B FF AD 31 */	bl mTG_get_table_idx
/* 805F4E34  80 DE 01 74 */	lwz r6, 0x174(r30)
/* 805F4E38  38 A3 2A 00 */	addi r5, r3, 0x2a00
/* 805F4E3C  38 00 00 01 */	li r0, 1
/* 805F4E40  7F E4 FB 78 */	mr r4, r31
/* 805F4E44  B0 A6 00 00 */	sth r5, 0(r6)
/* 805F4E48  38 A0 00 01 */	li r5, 1
/* 805F4E4C  98 66 00 02 */	stb r3, 2(r6)
/* 805F4E50  7F C3 F3 78 */	mr r3, r30
/* 805F4E54  B0 1E 01 7A */	sth r0, 0x17a(r30)
/* 805F4E58  4B FF E1 BD */	bl mTG_close_window
/* 805F4E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F4E60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F4E64  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F4E68  7C 08 03 A6 */	mtlr r0
/* 805F4E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 805F4E70  4E 80 00 20 */	blr 
