lbl_80495100:
/* 80495100  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80495104  7C 08 02 A6 */	mflr r0
/* 80495108  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049510C  39 61 00 20 */	addi r11, r1, 0x20
/* 80495110  4B C0 5D C1 */	bl func_8009AED0
/* 80495114  3C 80 80 69 */	lis r4, rand_max_table@ha /* 0x8068B8D4@ha */
/* 80495118  3B A3 00 02 */	addi r29, r3, 2
/* 8049511C  3B E4 B8 D4 */	addi r31, r4, rand_max_table@l /* 0x8068B8D4@l */
/* 80495120  3B C0 00 00 */	li r30, 0
/* 80495124  3B 80 00 00 */	li r28, 0
lbl_80495128:
/* 80495128  7C 3F E4 2E */	lfsx f1, r31, r28
/* 8049512C  88 DD 00 00 */	lbz r6, 0(r29)
/* 80495130  FC 00 08 1E */	fctiwz f0, f1
/* 80495134  D8 01 00 08 */	stfd f0, 8(r1)
/* 80495138  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8049513C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80495140  7C 06 00 40 */	cmplw r6, r0
/* 80495144  40 80 00 30 */	bge lbl_80495174
/* 80495148  3C 60 80 64 */	lis r3, lit_1562@ha /* 0x80644C8C@ha */
/* 8049514C  3C 80 80 69 */	lis r4, base_str_no_1548@ha /* 0x8068B8C0@ha */
/* 80495150  C0 03 4C 8C */	lfs f0, lit_1562@l(r3)  /* 0x80644C8C@l */
/* 80495154  3C A0 81 1D */	lis r5, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 80495158  38 84 B8 C0 */	addi r4, r4, base_str_no_1548@l /* 0x8068B8C0@l */
/* 8049515C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80495160  38 65 EC 94 */	addi r3, r5, l_aqmgr_str@l /* 0x811CEC94@l */
/* 80495164  7C A4 E0 2E */	lwzx r5, r4, r28
/* 80495168  7F C4 F3 78 */	mr r4, r30
/* 8049516C  4B FF FE F5 */	bl aQMgr_set_random_string
/* 80495170  48 00 00 24 */	b lbl_80495194
lbl_80495174:
/* 80495174  3C 60 80 69 */	lis r3, base_str_no_1548@ha /* 0x8068B8C0@ha */
/* 80495178  3C A0 81 1D */	lis r5, l_aqmgr_str@ha /* 0x811CEC94@ha */
/* 8049517C  38 83 B8 C0 */	addi r4, r3, base_str_no_1548@l /* 0x8068B8C0@l */
/* 80495180  38 C0 FF FF */	li r6, -1
/* 80495184  38 65 EC 94 */	addi r3, r5, l_aqmgr_str@l /* 0x811CEC94@l */
/* 80495188  7C A4 E0 2E */	lwzx r5, r4, r28
/* 8049518C  7F C4 F3 78 */	mr r4, r30
/* 80495190  4B FF FE D1 */	bl aQMgr_set_random_string
lbl_80495194:
/* 80495194  3B DE 00 01 */	addi r30, r30, 1
/* 80495198  98 7D 00 00 */	stb r3, 0(r29)
/* 8049519C  2C 1E 00 05 */	cmpwi r30, 5
/* 804951A0  3B BD 00 01 */	addi r29, r29, 1
/* 804951A4  3B 9C 00 04 */	addi r28, r28, 4
/* 804951A8  41 80 FF 80 */	blt lbl_80495128
/* 804951AC  39 61 00 20 */	addi r11, r1, 0x20
/* 804951B0  4B C0 5D 6D */	bl func_8009AF1C
/* 804951B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804951B8  7C 08 03 A6 */	mtlr r0
/* 804951BC  38 21 00 20 */	addi r1, r1, 0x20
/* 804951C0  4E 80 00 20 */	blr 
