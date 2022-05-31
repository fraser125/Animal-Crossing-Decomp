lbl_804BA008:
/* 804BA008  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BA00C  7C 08 02 A6 */	mflr r0
/* 804BA010  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BA014  A0 05 00 20 */	lhz r0, 0x20(r5)
/* 804BA018  28 00 00 00 */	cmplwi r0, 0
/* 804BA01C  40 82 00 54 */	bne lbl_804BA070
/* 804BA020  A8 05 00 16 */	lha r0, 0x16(r5)
/* 804BA024  2C 00 00 00 */	cmpwi r0, 0
/* 804BA028  41 82 00 48 */	beq lbl_804BA070
/* 804BA02C  3C C0 80 64 */	lis r6, lit_1546@ha /* 0x806460E4@ha */
/* 804BA030  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 804BA034  C0 26 60 E4 */	lfs f1, lit_1546@l(r6)  /* 0x806460E4@l */
/* 804BA038  38 00 00 00 */	li r0, 0
/* 804BA03C  7C A6 2B 78 */	mr r6, r5
/* 804BA040  38 E5 00 10 */	addi r7, r5, 0x10
/* 804BA044  EC 01 00 32 */	fmuls f0, f1, f0
/* 804BA048  39 01 00 10 */	addi r8, r1, 0x10
/* 804BA04C  39 20 00 FF */	li r9, 0xff
/* 804BA050  39 40 00 00 */	li r10, 0
/* 804BA054  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804BA058  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804BA05C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804BA060  90 01 00 08 */	stw r0, 8(r1)
/* 804BA064  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BA068  A0 A5 00 18 */	lhz r5, 0x18(r5)
/* 804BA06C  48 00 1D 05 */	bl bit_cmn_single_drawS
lbl_804BA070:
/* 804BA070  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BA074  7C 08 03 A6 */	mtlr r0
/* 804BA078  38 21 00 20 */	addi r1, r1, 0x20
/* 804BA07C  4E 80 00 20 */	blr 
