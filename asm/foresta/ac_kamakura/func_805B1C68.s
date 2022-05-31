lbl_805B1C68:
/* 805B1C68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B1C6C  7C 08 02 A6 */	mflr r0
/* 805B1C70  38 80 00 01 */	li r4, 1
/* 805B1C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B1C78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B1C7C  7C 7F 1B 78 */	mr r31, r3
/* 805B1C80  48 00 00 7D */	bl func_805B1CFC
/* 805B1C84  7F E3 FB 78 */	mr r3, r31
/* 805B1C88  38 80 00 00 */	li r4, 0
/* 805B1C8C  48 00 06 11 */	bl aKKR_setup_action
/* 805B1C90  7F E3 FB 78 */	mr r3, r31
/* 805B1C94  38 80 00 01 */	li r4, 1
/* 805B1C98  48 00 02 21 */	bl aKKR_set_bgOffset
/* 805B1C9C  7F E3 FB 78 */	mr r3, r31
/* 805B1CA0  48 00 06 19 */	bl aKKR_ctrl_light
/* 805B1CA4  2C 03 00 00 */	cmpwi r3, 0
/* 805B1CA8  41 82 00 10 */	beq lbl_805B1CB8
/* 805B1CAC  3C 60 80 65 */	lis r3, data_8064A85C@ha /* 0x8064A85C@ha */
/* 805B1CB0  C0 03 A8 5C */	lfs f0, data_8064A85C@l(r3)  /* 0x8064A85C@l */
/* 805B1CB4  48 00 00 0C */	b lbl_805B1CC0
lbl_805B1CB8:
/* 805B1CB8  3C 60 80 65 */	lis r3, lit_436@ha /* 0x8064A860@ha */
/* 805B1CBC  C0 03 A8 60 */	lfs f0, lit_436@l(r3)  /* 0x8064A860@l */
lbl_805B1CC0:
/* 805B1CC0  D0 1F 02 C8 */	stfs f0, 0x2c8(r31)
/* 805B1CC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B1CC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B1CCC  7C 08 03 A6 */	mtlr r0
/* 805B1CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 805B1CD4  4E 80 00 20 */	blr 
