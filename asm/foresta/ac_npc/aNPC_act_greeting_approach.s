lbl_80532D94:
/* 80532D94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80532D98  7C 08 02 A6 */	mflr r0
/* 80532D9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80532DA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80532DA4  7C 7F 1B 78 */	mr r31, r3
/* 80532DA8  88 63 09 35 */	lbz r3, 0x935(r3)
/* 80532DAC  28 03 00 00 */	cmplwi r3, 0
/* 80532DB0  41 82 00 0C */	beq lbl_80532DBC
/* 80532DB4  38 03 FF FF */	addi r0, r3, -1
/* 80532DB8  98 1F 09 35 */	stb r0, 0x935(r31)
lbl_80532DBC:
/* 80532DBC  7F E3 FB 78 */	mr r3, r31
/* 80532DC0  4B FF E1 41 */	bl aNPC_act_search_move
/* 80532DC4  2C 03 00 00 */	cmpwi r3, 0
/* 80532DC8  41 82 00 1C */	beq lbl_80532DE4
/* 80532DCC  88 1F 09 58 */	lbz r0, 0x958(r31)
/* 80532DD0  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80532DD4  40 82 00 10 */	bne lbl_80532DE4
/* 80532DD8  88 1F 09 35 */	lbz r0, 0x935(r31)
/* 80532DDC  28 00 00 00 */	cmplwi r0, 0
/* 80532DE0  40 82 00 10 */	bne lbl_80532DF0
lbl_80532DE4:
/* 80532DE4  7F E3 FB 78 */	mr r3, r31
/* 80532DE8  38 80 00 02 */	li r4, 2
/* 80532DEC  4B FF FE E5 */	bl aNPC_act_greeting_chg_step
lbl_80532DF0:
/* 80532DF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80532DF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80532DF8  7C 08 03 A6 */	mtlr r0
/* 80532DFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80532E00  4E 80 00 20 */	blr 
