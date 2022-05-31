lbl_803D112C:
/* 803D112C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D1130  7C 08 02 A6 */	mflr r0
/* 803D1134  3C 60 81 17 */	lis r3, l_mnpc_goodby_mail@ha /* 0x8116C4B8@ha */
/* 803D1138  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D113C  38 63 C4 B8 */	addi r3, r3, l_mnpc_goodby_mail@l /* 0x8116C4B8@l */
/* 803D1140  4B FF FF 29 */	bl mNpc_SendGoodbyAnimalMail
/* 803D1144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D1148  7C 08 03 A6 */	mtlr r0
/* 803D114C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D1150  4E 80 00 20 */	blr 
