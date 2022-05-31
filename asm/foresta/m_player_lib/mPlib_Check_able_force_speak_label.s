lbl_803D9F58:
/* 803D9F58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D9F5C  7C 08 02 A6 */	mflr r0
/* 803D9F60  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803D9F64  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D9F68  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803D9F6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D9F70  7C 9F 23 78 */	mr r31, r4
/* 803D9F74  3C 85 00 03 */	addis r4, r5, 3
/* 803D9F78  93 C1 00 08 */	stw r30, 8(r1)
/* 803D9F7C  7C 7E 1B 78 */	mr r30, r3
/* 803D9F80  88 04 85 BE */	lbz r0, -0x7a42(r4)
/* 803D9F84  7C 00 07 75 */	extsb. r0, r0
/* 803D9F88  40 82 00 0C */	bne lbl_803D9F94
/* 803D9F8C  38 60 00 00 */	li r3, 0
/* 803D9F90  48 00 00 1C */	b lbl_803D9FAC
lbl_803D9F94:
/* 803D9F94  4B FF F6 AD */	bl get_player_actor_withoutCheck
/* 803D9F98  81 83 13 2C */	lwz r12, 0x132c(r3)
/* 803D9F9C  7F C3 F3 78 */	mr r3, r30
/* 803D9FA0  7F E4 FB 78 */	mr r4, r31
/* 803D9FA4  7D 89 03 A6 */	mtctr r12
/* 803D9FA8  4E 80 04 21 */	bctrl 
lbl_803D9FAC:
/* 803D9FAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D9FB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D9FB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D9FB8  7C 08 03 A6 */	mtlr r0
/* 803D9FBC  38 21 00 10 */	addi r1, r1, 0x10
/* 803D9FC0  4E 80 00 20 */	blr 
