lbl_803DD9E8:
/* 803DD9E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DD9EC  7C 08 02 A6 */	mflr r0
/* 803DD9F0  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DD9F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DD9F8  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DD9FC  80 63 00 00 */	lwz r3, 0(r3)
/* 803DDA00  4B FF BC 41 */	bl get_player_actor_withoutCheck
/* 803DDA04  88 03 11 2B */	lbz r0, 0x112b(r3)
/* 803DDA08  7C 00 07 74 */	extsb r0, r0
/* 803DDA0C  54 00 0F FE */	srwi r0, r0, 0x1f
/* 803DDA10  68 03 00 01 */	xori r3, r0, 1
/* 803DDA14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DDA18  7C 08 03 A6 */	mtlr r0
/* 803DDA1C  38 21 00 10 */	addi r1, r1, 0x10
/* 803DDA20  4E 80 00 20 */	blr 
