lbl_803DDB64:
/* 803DDB64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DDB68  7C 08 02 A6 */	mflr r0
/* 803DDB6C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DDB70  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DDB74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DDB78  93 C1 00 08 */	stw r30, 8(r1)
/* 803DDB7C  7C 7E 1B 78 */	mr r30, r3
/* 803DDB80  83 E4 52 F0 */	lwz r31, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 803DDB84  7F E3 FB 78 */	mr r3, r31
/* 803DDB88  4B FF BA B9 */	bl get_player_actor_withoutCheck
/* 803DDB8C  81 83 13 70 */	lwz r12, 0x1370(r3)
/* 803DDB90  7F E3 FB 78 */	mr r3, r31
/* 803DDB94  7F C4 F3 78 */	mr r4, r30
/* 803DDB98  7D 89 03 A6 */	mtctr r12
/* 803DDB9C  4E 80 04 21 */	bctrl 
/* 803DDBA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DDBA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DDBA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DDBAC  7C 08 03 A6 */	mtlr r0
/* 803DDBB0  38 21 00 10 */	addi r1, r1, 0x10
/* 803DDBB4  4E 80 00 20 */	blr 
