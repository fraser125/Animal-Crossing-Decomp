lbl_803DDF1C:
/* 803DDF1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DDF20  7C 08 02 A6 */	mflr r0
/* 803DDF24  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DDF28  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DDF2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DDF30  3C 63 00 03 */	addis r3, r3, 3
/* 803DDF34  88 03 85 BE */	lbz r0, -0x7a42(r3)
/* 803DDF38  7C 00 07 75 */	extsb. r0, r0
/* 803DDF3C  41 82 00 34 */	beq lbl_803DDF70
/* 803DDF40  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DDF44  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DDF48  80 63 00 00 */	lwz r3, 0(r3)
/* 803DDF4C  4B FF B6 F5 */	bl get_player_actor_withoutCheck
/* 803DDF50  80 63 0F 30 */	lwz r3, 0xf30(r3)
/* 803DDF54  28 03 00 00 */	cmplwi r3, 0
/* 803DDF58  41 82 00 18 */	beq lbl_803DDF70
/* 803DDF5C  80 03 02 38 */	lwz r0, 0x238(r3)
/* 803DDF60  20 00 00 06 */	subfic r0, r0, 6
/* 803DDF64  7C 00 00 34 */	cntlzw r0, r0
/* 803DDF68  54 03 D9 7E */	srwi r3, r0, 5
/* 803DDF6C  48 00 00 08 */	b lbl_803DDF74
lbl_803DDF70:
/* 803DDF70  38 60 00 00 */	li r3, 0
lbl_803DDF74:
/* 803DDF74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DDF78  7C 08 03 A6 */	mtlr r0
/* 803DDF7C  38 21 00 10 */	addi r1, r1, 0x10
/* 803DDF80  4E 80 00 20 */	blr 
