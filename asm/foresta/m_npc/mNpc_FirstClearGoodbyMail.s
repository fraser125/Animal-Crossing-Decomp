lbl_803D0DC8:
/* 803D0DC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D0DCC  7C 08 02 A6 */	mflr r0
/* 803D0DD0  3C 60 81 17 */	lis r3, l_mnpc_goodby_mail@ha /* 0x8116C4B8@ha */
/* 803D0DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D0DD8  38 63 C4 B8 */	addi r3, r3, l_mnpc_goodby_mail@l /* 0x8116C4B8@l */
/* 803D0DDC  4B FF FF B9 */	bl mNpc_ClearGoodbyMail
/* 803D0DE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D0DE4  7C 08 03 A6 */	mtlr r0
/* 803D0DE8  38 21 00 10 */	addi r1, r1, 0x10
/* 803D0DEC  4E 80 00 20 */	blr 
