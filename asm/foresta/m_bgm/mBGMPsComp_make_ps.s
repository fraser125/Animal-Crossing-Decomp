lbl_8037B8D8:
/* 8037B8D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8037B8DC  7C 08 02 A6 */	mflr r0
/* 8037B8E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8037B8E4  39 61 00 30 */	addi r11, r1, 0x30
/* 8037B8E8  4B D1 F5 DD */	bl func_8009AEC4
/* 8037B8EC  7C BA 2B 78 */	mr r26, r5
/* 8037B8F0  7D 1D 43 78 */	mr r29, r8
/* 8037B8F4  7C 99 23 78 */	mr r25, r4
/* 8037B8F8  7C 7E 1B 78 */	mr r30, r3
/* 8037B8FC  7C DB 33 78 */	mr r27, r6
/* 8037B900  7C FC 3B 78 */	mr r28, r7
/* 8037B904  7F 44 D3 78 */	mr r4, r26
/* 8037B908  7F A5 EB 78 */	mr r5, r29
/* 8037B90C  4B FF EF 49 */	bl mBGMPsComp_search_insert_pos_kategorie
/* 8037B910  7C 7F 1B 79 */	or. r31, r3, r3
/* 8037B914  41 80 00 38 */	blt lbl_8037B94C
/* 8037B918  1C 1F 00 14 */	mulli r0, r31, 0x14
/* 8037B91C  7F C3 F3 78 */	mr r3, r30
/* 8037B920  7F E4 FB 78 */	mr r4, r31
/* 8037B924  7F DE 02 14 */	add r30, r30, r0
/* 8037B928  4B FF F0 5D */	bl mBGMPsComp_shift_behind
/* 8037B92C  7F 23 CB 78 */	mr r3, r25
/* 8037B930  7F C4 F3 78 */	mr r4, r30
/* 8037B934  38 A0 00 08 */	li r5, 8
/* 8037B938  4B CE 16 E5 */	bl func_8005D01C
/* 8037B93C  93 5E 00 08 */	stw r26, 8(r30)
/* 8037B940  B3 7E 00 0C */	sth r27, 0xc(r30)
/* 8037B944  B3 9E 00 0E */	sth r28, 0xe(r30)
/* 8037B948  9B BE 00 10 */	stb r29, 0x10(r30)
lbl_8037B94C:
/* 8037B94C  7F E3 FB 78 */	mr r3, r31
/* 8037B950  39 61 00 30 */	addi r11, r1, 0x30
/* 8037B954  4B D1 F5 BD */	bl func_8009AF10
/* 8037B958  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8037B95C  7C 08 03 A6 */	mtlr r0
/* 8037B960  38 21 00 30 */	addi r1, r1, 0x30
/* 8037B964  4E 80 00 20 */	blr 
