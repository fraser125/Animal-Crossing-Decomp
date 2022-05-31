lbl_804AB454:
/* 804AB454  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AB458  7C 08 02 A6 */	mflr r0
/* 804AB45C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AB460  39 61 00 20 */	addi r11, r1, 0x20
/* 804AB464  4B BE FA 71 */	bl func_8009AED4
/* 804AB468  7C 7D 1B 78 */	mr r29, r3
/* 804AB46C  7C 9E 23 78 */	mr r30, r4
/* 804AB470  38 60 00 0F */	li r3, 0xf
/* 804AB474  38 80 00 08 */	li r4, 8
/* 804AB478  4B EF 29 55 */	bl mEv_get_save_area
/* 804AB47C  38 00 00 FE */	li r0, 0xfe
/* 804AB480  7C 7F 1B 78 */	mr r31, r3
/* 804AB484  98 1D 00 D6 */	stb r0, 0xd6(r29)
/* 804AB488  7F A3 EB 78 */	mr r3, r29
/* 804AB48C  7F C4 F3 78 */	mr r4, r30
/* 804AB490  4B FF FC 75 */	bl aTKN1_turn_f_init
/* 804AB494  38 60 00 05 */	li r3, 5
/* 804AB498  38 00 00 00 */	li r0, 0
/* 804AB49C  B0 7D 09 74 */	sth r3, 0x974(r29)
/* 804AB4A0  38 80 00 01 */	li r4, 1
/* 804AB4A4  98 1D 09 73 */	stb r0, 0x973(r29)
/* 804AB4A8  A0 7D 00 06 */	lhz r3, 6(r29)
/* 804AB4AC  88 BF 00 01 */	lbz r5, 1(r31)
/* 804AB4B0  3C 63 FF FF */	addis r3, r3, 0xffff
/* 804AB4B4  38 03 2F D5 */	addi r0, r3, 0x2fd5
/* 804AB4B8  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 804AB4BC  7C 80 00 30 */	slw r0, r4, r0
/* 804AB4C0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804AB4C4  7C A0 03 78 */	or r0, r5, r0
/* 804AB4C8  98 1F 00 01 */	stb r0, 1(r31)
/* 804AB4CC  39 61 00 20 */	addi r11, r1, 0x20
/* 804AB4D0  4B BE FA 51 */	bl func_8009AF20
/* 804AB4D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AB4D8  7C 08 03 A6 */	mtlr r0
/* 804AB4DC  38 21 00 20 */	addi r1, r1, 0x20
/* 804AB4E0  4E 80 00 20 */	blr 
