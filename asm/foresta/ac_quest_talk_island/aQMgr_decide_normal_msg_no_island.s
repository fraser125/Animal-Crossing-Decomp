lbl_8049019C:
/* 8049019C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804901A0  7C 08 02 A6 */	mflr r0
/* 804901A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804901A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804901AC  93 C1 00 08 */	stw r30, 8(r1)
/* 804901B0  7C 9E 23 78 */	mr r30, r4
/* 804901B4  2C 1E 00 06 */	cmpwi r30, 6
/* 804901B8  40 80 00 0C */	bge lbl_804901C4
/* 804901BC  2C 1E 00 00 */	cmpwi r30, 0
/* 804901C0  40 80 00 08 */	bge lbl_804901C8
lbl_804901C4:
/* 804901C4  3B C0 00 00 */	li r30, 0
lbl_804901C8:
/* 804901C8  38 60 00 0A */	li r3, 0xa
/* 804901CC  4B F5 42 05 */	bl mQst_GetRandom
/* 804901D0  3C A0 80 69 */	lis r5, msg_table_1272@ha /* 0x8068B354@ha */
/* 804901D4  3C 80 81 1D */	lis r4, oldMsg@ha /* 0x811CEC28@ha */
/* 804901D8  57 DE 10 3A */	slwi r30, r30, 2
/* 804901DC  80 04 EC 28 */	lwz r0, oldMsg@l(r4)  /* 0x811CEC28@l */
/* 804901E0  3B E5 B3 54 */	addi r31, r5, msg_table_1272@l /* 0x8068B354@l */
/* 804901E4  7C BF F0 2E */	lwzx r5, r31, r30
/* 804901E8  7C 65 1A 14 */	add r3, r5, r3
/* 804901EC  7C 03 00 00 */	cmpw r3, r0
/* 804901F0  40 82 00 28 */	bne lbl_80490218
/* 804901F4  38 60 00 09 */	li r3, 9
/* 804901F8  4B F5 41 D9 */	bl mQst_GetRandom
/* 804901FC  3C 80 81 1D */	lis r4, oldMsg@ha /* 0x811CEC28@ha */
/* 80490200  7C BF F0 2E */	lwzx r5, r31, r30
/* 80490204  80 04 EC 28 */	lwz r0, oldMsg@l(r4)  /* 0x811CEC28@l */
/* 80490208  7C 65 1A 14 */	add r3, r5, r3
/* 8049020C  7C 03 00 00 */	cmpw r3, r0
/* 80490210  40 82 00 08 */	bne lbl_80490218
/* 80490214  38 63 00 01 */	addi r3, r3, 1
lbl_80490218:
/* 80490218  2C 03 FF FF */	cmpwi r3, -1
/* 8049021C  41 82 00 0C */	beq lbl_80490228
/* 80490220  3C 80 81 1D */	lis r4, oldMsg@ha /* 0x811CEC28@ha */
/* 80490224  90 64 EC 28 */	stw r3, oldMsg@l(r4)  /* 0x811CEC28@l */
lbl_80490228:
/* 80490228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049022C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80490230  83 C1 00 08 */	lwz r30, 8(r1)
/* 80490234  7C 08 03 A6 */	mtlr r0
/* 80490238  38 21 00 10 */	addi r1, r1, 0x10
/* 8049023C  4E 80 00 20 */	blr 
