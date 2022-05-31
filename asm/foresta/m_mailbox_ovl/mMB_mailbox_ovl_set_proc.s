lbl_805E5CAC:
/* 805E5CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E5CB0  7C 08 02 A6 */	mflr r0
/* 805E5CB4  3C 80 80 5E */	lis r4, mMB_mailbox_ovl_move@ha /* 0x805E5754@ha */
/* 805E5CB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E5CBC  38 04 57 54 */	addi r0, r4, mMB_mailbox_ovl_move@l /* 0x805E5754@l */
/* 805E5CC0  3C 80 80 5E */	lis r4, mMB_mailbox_ovl_draw@ha /* 0x805E5C4C@ha */
/* 805E5CC4  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E5CC8  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805E5CCC  38 04 5C 4C */	addi r0, r4, mMB_mailbox_ovl_draw@l /* 0x805E5C4C@l */
/* 805E5CD0  90 05 09 10 */	stw r0, 0x910(r5)
/* 805E5CD4  80 05 09 80 */	lwz r0, 0x980(r5)
/* 805E5CD8  28 00 00 00 */	cmplwi r0, 0
/* 805E5CDC  41 82 00 24 */	beq lbl_805E5D00
/* 805E5CE0  80 05 03 9C */	lwz r0, 0x39c(r5)
/* 805E5CE4  2C 00 00 04 */	cmpwi r0, 4
/* 805E5CE8  41 82 00 18 */	beq lbl_805E5D00
/* 805E5CEC  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805E5CF0  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805E5CF4  81 84 03 74 */	lwz r12, 0x374(r4)
/* 805E5CF8  7D 89 03 A6 */	mtctr r12
/* 805E5CFC  4E 80 04 21 */	bctrl 
lbl_805E5D00:
/* 805E5D00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E5D04  7C 08 03 A6 */	mtlr r0
/* 805E5D08  38 21 00 10 */	addi r1, r1, 0x10
/* 805E5D0C  4E 80 00 20 */	blr 
