lbl_804C8F18:
/* 804C8F18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C8F1C  7C 08 02 A6 */	mflr r0
/* 804C8F20  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C8F24  A0 05 00 20 */	lhz r0, 0x20(r5)
/* 804C8F28  28 00 00 00 */	cmplwi r0, 0
/* 804C8F2C  40 82 00 54 */	bne lbl_804C8F80
/* 804C8F30  A8 05 00 16 */	lha r0, 0x16(r5)
/* 804C8F34  2C 00 00 00 */	cmpwi r0, 0
/* 804C8F38  41 82 00 48 */	beq lbl_804C8F80
/* 804C8F3C  3C C0 80 64 */	lis r6, lit_1546@ha /* 0x80646234@ha */
/* 804C8F40  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 804C8F44  C0 26 62 34 */	lfs f1, lit_1546@l(r6)  /* 0x80646234@l */
/* 804C8F48  38 00 00 00 */	li r0, 0
/* 804C8F4C  7C A6 2B 78 */	mr r6, r5
/* 804C8F50  38 E5 00 10 */	addi r7, r5, 0x10
/* 804C8F54  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C8F58  39 01 00 10 */	addi r8, r1, 0x10
/* 804C8F5C  39 20 00 FF */	li r9, 0xff
/* 804C8F60  39 40 00 00 */	li r10, 0
/* 804C8F64  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804C8F68  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804C8F6C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804C8F70  90 01 00 08 */	stw r0, 8(r1)
/* 804C8F74  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C8F78  A0 A5 00 18 */	lhz r5, 0x18(r5)
/* 804C8F7C  48 00 1D 05 */	bl bit_cmn_single_drawS
lbl_804C8F80:
/* 804C8F80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C8F84  7C 08 03 A6 */	mtlr r0
/* 804C8F88  38 21 00 20 */	addi r1, r1, 0x20
/* 804C8F8C  4E 80 00 20 */	blr 
