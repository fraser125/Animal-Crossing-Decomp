lbl_804E3CB4:
/* 804E3CB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E3CB8  7C 08 02 A6 */	mflr r0
/* 804E3CBC  7C 04 28 00 */	cmpw r4, r5
/* 804E3CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E3CC4  41 82 00 24 */	beq lbl_804E3CE8
/* 804E3CC8  3C C0 80 65 */	lis r6, proc_6998@ha /* 0x80648114@ha */
/* 804E3CCC  54 80 10 3A */	slwi r0, r4, 2
/* 804E3CD0  38 C6 81 14 */	addi r6, r6, proc_6998@l /* 0x80648114@l */
/* 804E3CD4  7D 86 00 2E */	lwzx r12, r6, r0
/* 804E3CD8  28 0C 00 00 */	cmplwi r12, 0
/* 804E3CDC  41 82 00 0C */	beq lbl_804E3CE8
/* 804E3CE0  7D 89 03 A6 */	mtctr r12
/* 804E3CE4  4E 80 04 21 */	bctrl 
lbl_804E3CE8:
/* 804E3CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E3CEC  7C 08 03 A6 */	mtlr r0
/* 804E3CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E3CF4  4E 80 00 20 */	blr 
