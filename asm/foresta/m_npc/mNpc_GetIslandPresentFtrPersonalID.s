lbl_803D54F0:
/* 803D54F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D54F4  7C 08 02 A6 */	mflr r0
/* 803D54F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D54FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D5500  3B E0 00 00 */	li r31, 0
/* 803D5504  4B FF FF 8D */	bl mNpc_CheckIslandPresentFtrIs
/* 803D5508  2C 03 00 01 */	cmpwi r3, 1
/* 803D550C  40 82 00 10 */	bne lbl_803D551C
/* 803D5510  3C 60 81 17 */	lis r3, l_mnpc_island_present_ftr@ha /* 0x8116EB84@ha */
/* 803D5514  38 03 EB 84 */	addi r0, r3, l_mnpc_island_present_ftr@l /* 0x8116EB84@l */
/* 803D5518  7C 1F 03 78 */	mr r31, r0
lbl_803D551C:
/* 803D551C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D5520  7F E3 FB 78 */	mr r3, r31
/* 803D5524  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D5528  7C 08 03 A6 */	mtlr r0
/* 803D552C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D5530  4E 80 00 20 */	blr 
