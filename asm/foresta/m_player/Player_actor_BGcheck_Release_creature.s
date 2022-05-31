lbl_804FEEF4:
/* 804FEEF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FEEF8  7C 08 02 A6 */	mflr r0
/* 804FEEFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FEF00  4B FD 8D 99 */	bl Player_actor_BGcheck_common_type1
/* 804FEF04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FEF08  7C 08 03 A6 */	mtlr r0
/* 804FEF0C  38 21 00 10 */	addi r1, r1, 0x10
/* 804FEF10  4E 80 00 20 */	blr 
