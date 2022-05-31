lbl_803DDAB8:
/* 803DDAB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DDABC  7C 08 02 A6 */	mflr r0
/* 803DDAC0  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DDAC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DDAC8  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DDACC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DDAD0  80 63 00 00 */	lwz r3, 0(r3)
/* 803DDAD4  4B FF BB 6D */	bl get_player_actor_withoutCheck
/* 803DDAD8  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DDADC  7C 7F 1B 78 */	mr r31, r3
/* 803DDAE0  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DDAE4  80 63 00 00 */	lwz r3, 0(r3)
/* 803DDAE8  4B FF BB 59 */	bl get_player_actor_withoutCheck
/* 803DDAEC  81 83 13 58 */	lwz r12, 0x1358(r3)
/* 803DDAF0  7F E3 FB 78 */	mr r3, r31
/* 803DDAF4  7D 89 03 A6 */	mtctr r12
/* 803DDAF8  4E 80 04 21 */	bctrl 
/* 803DDAFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DDB00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DDB04  7C 08 03 A6 */	mtlr r0
/* 803DDB08  38 21 00 10 */	addi r1, r1, 0x10
/* 803DDB0C  4E 80 00 20 */	blr 
