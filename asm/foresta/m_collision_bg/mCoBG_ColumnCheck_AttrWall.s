lbl_8038EEF0:
/* 8038EEF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038EEF4  7C 08 02 A6 */	mflr r0
/* 8038EEF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038EEFC  7D 00 07 35 */	extsh. r0, r8
/* 8038EF00  41 82 00 20 */	beq lbl_8038EF20
/* 8038EF04  88 04 00 03 */	lbz r0, 3(r4)
/* 8038EF08  3D 00 80 65 */	lis r8, atr_column_sub_proc_table@ha /* 0x80650C98@ha */
/* 8038EF0C  39 08 0C 98 */	addi r8, r8, atr_column_sub_proc_table@l /* 0x80650C98@l */
/* 8038EF10  54 00 10 3A */	slwi r0, r0, 2
/* 8038EF14  7D 88 00 2E */	lwzx r12, r8, r0
/* 8038EF18  7D 89 03 A6 */	mtctr r12
/* 8038EF1C  4E 80 04 21 */	bctrl 
lbl_8038EF20:
/* 8038EF20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038EF24  7C 08 03 A6 */	mtlr r0
/* 8038EF28  38 21 00 10 */	addi r1, r1, 0x10
/* 8038EF2C  4E 80 00 20 */	blr 
