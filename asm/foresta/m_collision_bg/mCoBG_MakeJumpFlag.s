lbl_80388CA0:
/* 80388CA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80388CA4  7C 08 02 A6 */	mflr r0
/* 80388CA8  3C C0 80 65 */	lis r6, make_jump_flag_proc@ha /* 0x80650CEC@ha */
/* 80388CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80388CB0  38 C6 0C EC */	addi r6, r6, make_jump_flag_proc@l /* 0x80650CEC@l */
/* 80388CB4  88 04 00 03 */	lbz r0, 3(r4)
/* 80388CB8  54 00 17 7A */	rlwinm r0, r0, 2, 0x1d, 0x1d
/* 80388CBC  7D 86 00 2E */	lwzx r12, r6, r0
/* 80388CC0  7D 89 03 A6 */	mtctr r12
/* 80388CC4  4E 80 04 21 */	bctrl 
/* 80388CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80388CCC  7C 08 03 A6 */	mtlr r0
/* 80388CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80388CD4  4E 80 00 20 */	blr 
