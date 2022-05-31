lbl_804B2C84:
/* 804B2C84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804B2C88  7C 08 02 A6 */	mflr r0
/* 804B2C8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B2C90  A0 05 00 20 */	lhz r0, 0x20(r5)
/* 804B2C94  28 00 00 00 */	cmplwi r0, 0
/* 804B2C98  40 82 00 54 */	bne lbl_804B2CEC
/* 804B2C9C  A8 05 00 16 */	lha r0, 0x16(r5)
/* 804B2CA0  2C 00 00 00 */	cmpwi r0, 0
/* 804B2CA4  41 82 00 48 */	beq lbl_804B2CEC
/* 804B2CA8  3C C0 80 64 */	lis r6, lit_1546@ha /* 0x80646044@ha */
/* 804B2CAC  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 804B2CB0  C0 26 60 44 */	lfs f1, lit_1546@l(r6)  /* 0x80646044@l */
/* 804B2CB4  38 00 00 00 */	li r0, 0
/* 804B2CB8  7C A6 2B 78 */	mr r6, r5
/* 804B2CBC  38 E5 00 10 */	addi r7, r5, 0x10
/* 804B2CC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B2CC4  39 01 00 10 */	addi r8, r1, 0x10
/* 804B2CC8  39 20 00 FF */	li r9, 0xff
/* 804B2CCC  39 40 00 00 */	li r10, 0
/* 804B2CD0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804B2CD4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804B2CD8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804B2CDC  90 01 00 08 */	stw r0, 8(r1)
/* 804B2CE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B2CE4  A0 A5 00 18 */	lhz r5, 0x18(r5)
/* 804B2CE8  48 00 1D 05 */	bl bit_cmn_single_drawS
lbl_804B2CEC:
/* 804B2CEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B2CF0  7C 08 03 A6 */	mtlr r0
/* 804B2CF4  38 21 00 20 */	addi r1, r1, 0x20
/* 804B2CF8  4E 80 00 20 */	blr 
