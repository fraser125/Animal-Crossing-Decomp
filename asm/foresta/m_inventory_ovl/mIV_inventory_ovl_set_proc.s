lbl_805E4850:
/* 805E4850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E4854  7C 08 02 A6 */	mflr r0
/* 805E4858  3C 80 80 5E */	lis r4, mIV_inventory_ovl_move@ha /* 0x805E35D8@ha */
/* 805E485C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E4860  38 04 35 D8 */	addi r0, r4, mIV_inventory_ovl_move@l /* 0x805E35D8@l */
/* 805E4864  3C 80 80 5E */	lis r4, mIV_inventory_ovl_draw@ha /* 0x805E47F8@ha */
/* 805E4868  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E486C  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805E4870  38 04 47 F8 */	addi r0, r4, mIV_inventory_ovl_draw@l /* 0x805E47F8@l */
/* 805E4874  90 05 09 10 */	stw r0, 0x910(r5)
/* 805E4878  80 05 09 80 */	lwz r0, 0x980(r5)
/* 805E487C  28 00 00 00 */	cmplwi r0, 0
/* 805E4880  41 82 00 24 */	beq lbl_805E48A4
/* 805E4884  80 05 00 CC */	lwz r0, 0xcc(r5)
/* 805E4888  2C 00 00 04 */	cmpwi r0, 4
/* 805E488C  41 82 00 18 */	beq lbl_805E48A4
/* 805E4890  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805E4894  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805E4898  81 84 03 74 */	lwz r12, 0x374(r4)
/* 805E489C  7D 89 03 A6 */	mtctr r12
/* 805E48A0  4E 80 04 21 */	bctrl 
lbl_805E48A4:
/* 805E48A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E48A8  7C 08 03 A6 */	mtlr r0
/* 805E48AC  38 21 00 10 */	addi r1, r1, 0x10
/* 805E48B0  4E 80 00 20 */	blr 
