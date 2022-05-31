lbl_804BABA8:
/* 804BABA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BABAC  7C 08 02 A6 */	mflr r0
/* 804BABB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BABB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BABB8  7C 7F 1B 78 */	mr r31, r3
/* 804BABBC  A8 63 00 90 */	lha r3, 0x90(r3)
/* 804BABC0  38 03 FF FF */	addi r0, r3, -1
/* 804BABC4  B0 1F 00 90 */	sth r0, 0x90(r31)
/* 804BABC8  A8 1F 00 90 */	lha r0, 0x90(r31)
/* 804BABCC  2C 00 00 00 */	cmpwi r0, 0
/* 804BABD0  40 82 00 30 */	bne lbl_804BAC00
/* 804BABD4  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 804BABD8  28 03 00 00 */	cmplwi r3, 0
/* 804BABDC  41 82 00 10 */	beq lbl_804BABEC
/* 804BABE0  38 63 00 28 */	addi r3, r3, 0x28
/* 804BABE4  38 9F 00 14 */	addi r4, r31, 0x14
/* 804BABE8  4B F0 02 D5 */	bl xyz_t_move
lbl_804BABEC:
/* 804BABEC  38 00 00 78 */	li r0, 0x78
/* 804BABF0  3C 60 80 4C */	lis r3, bIT_actor_drop_move_wait@ha /* 0x804BAC14@ha */
/* 804BABF4  B0 1F 00 88 */	sth r0, 0x88(r31)
/* 804BABF8  38 03 AC 14 */	addi r0, r3, bIT_actor_drop_move_wait@l /* 0x804BAC14@l */
/* 804BABFC  90 1F 00 00 */	stw r0, 0(r31)
lbl_804BAC00:
/* 804BAC00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BAC04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BAC08  7C 08 03 A6 */	mtlr r0
/* 804BAC0C  38 21 00 10 */	addi r1, r1, 0x10
/* 804BAC10  4E 80 00 20 */	blr 
