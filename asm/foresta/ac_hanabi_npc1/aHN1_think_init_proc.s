lbl_80529544:
/* 80529544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80529548  7C 08 02 A6 */	mflr r0
/* 8052954C  3C 80 80 53 */	lis r4, aHN1_act_proc@ha /* 0x80529470@ha */
/* 80529550  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529554  38 00 00 00 */	li r0, 0
/* 80529558  90 03 07 D8 */	stw r0, 0x7d8(r3)
/* 8052955C  38 04 94 70 */	addi r0, r4, aHN1_act_proc@l /* 0x80529470@l */
/* 80529560  90 03 08 04 */	stw r0, 0x804(r3)
/* 80529564  4B FF FB E5 */	bl func_80529148
/* 80529568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052956C  7C 08 03 A6 */	mtlr r0
/* 80529570  38 21 00 10 */	addi r1, r1, 0x10
/* 80529574  4E 80 00 20 */	blr 