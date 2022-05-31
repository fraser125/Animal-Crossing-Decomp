lbl_8037C89C:
/* 8037C89C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C8A0  7C 08 02 A6 */	mflr r0
/* 8037C8A4  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037C8A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C8AC  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037C8B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037C8B4  3B E3 01 64 */	addi r31, r3, 0x164
/* 8037C8B8  7F E3 FB 78 */	mr r3, r31
/* 8037C8BC  4B FF E1 89 */	bl mBGMPsComp_execute_ps_pos_get
/* 8037C8C0  2C 03 00 00 */	cmpwi r3, 0
/* 8037C8C4  41 80 00 28 */	blt lbl_8037C8EC
/* 8037C8C8  1C 03 00 14 */	mulli r0, r3, 0x14
/* 8037C8CC  7C 7F 00 AE */	lbzx r3, r31, r0
/* 8037C8D0  28 03 00 7F */	cmplwi r3, 0x7f
/* 8037C8D4  41 82 00 18 */	beq lbl_8037C8EC
/* 8037C8D8  7C 9F 02 14 */	add r4, r31, r0
/* 8037C8DC  A0 04 00 0E */	lhz r0, 0xe(r4)
/* 8037C8E0  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8037C8E4  40 82 00 08 */	bne lbl_8037C8EC
/* 8037C8E8  48 00 00 08 */	b lbl_8037C8F0
lbl_8037C8EC:
/* 8037C8EC  38 60 FF FF */	li r3, -1
lbl_8037C8F0:
/* 8037C8F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037C8F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037C8F8  7C 08 03 A6 */	mtlr r0
/* 8037C8FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8037C900  4E 80 00 20 */	blr 
