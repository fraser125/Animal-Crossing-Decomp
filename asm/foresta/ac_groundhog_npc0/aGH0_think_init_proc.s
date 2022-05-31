lbl_80590DD0:
/* 80590DD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80590DD4  7C 08 02 A6 */	mflr r0
/* 80590DD8  3C 80 80 59 */	lis r4, aGH0_act_proc@ha /* 0x80590C78@ha */
/* 80590DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80590DE0  38 00 00 00 */	li r0, 0
/* 80590DE4  90 03 07 D8 */	stw r0, 0x7d8(r3)
/* 80590DE8  38 04 0C 78 */	addi r0, r4, aGH0_act_proc@l /* 0x80590C78@l */
/* 80590DEC  90 03 08 04 */	stw r0, 0x804(r3)
/* 80590DF0  4B FF FD 5D */	bl func_80590B4C
/* 80590DF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80590DF8  7C 08 03 A6 */	mtlr r0
/* 80590DFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80590E00  4E 80 00 20 */	blr 
