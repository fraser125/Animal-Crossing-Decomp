lbl_80591ED8:
/* 80591ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80591EDC  7C 08 02 A6 */	mflr r0
/* 80591EE0  3C 80 80 59 */	lis r4, aHT1_act_proc@ha /* 0x80591E08@ha */
/* 80591EE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80591EE8  38 00 00 00 */	li r0, 0
/* 80591EEC  90 03 07 D8 */	stw r0, 0x7d8(r3)
/* 80591EF0  38 04 1E 08 */	addi r0, r4, aHT1_act_proc@l /* 0x80591E08@l */
/* 80591EF4  90 03 08 04 */	stw r0, 0x804(r3)
/* 80591EF8  4B FF FD D9 */	bl func_80591CD0
/* 80591EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80591F00  7C 08 03 A6 */	mtlr r0
/* 80591F04  38 21 00 10 */	addi r1, r1, 0x10
/* 80591F08  4E 80 00 20 */	blr 
