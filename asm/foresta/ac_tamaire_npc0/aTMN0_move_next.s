lbl_80589BA8:
/* 80589BA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80589BAC  7C 08 02 A6 */	mflr r0
/* 80589BB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80589BB4  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 80589BB8  28 00 00 01 */	cmplwi r0, 1
/* 80589BBC  40 82 00 24 */	bne lbl_80589BE0
/* 80589BC0  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 80589BC4  28 00 00 FF */	cmplwi r0, 0xff
/* 80589BC8  40 82 00 18 */	bne lbl_80589BE0
/* 80589BCC  88 A3 09 A6 */	lbz r5, 0x9a6(r3)
/* 80589BD0  38 A5 00 01 */	addi r5, r5, 1
/* 80589BD4  98 A3 09 A6 */	stb r5, 0x9a6(r3)
/* 80589BD8  48 00 03 01 */	bl aTMN0_setup_think_proc
/* 80589BDC  48 00 00 54 */	b lbl_80589C30
lbl_80589BE0:
/* 80589BE0  C0 03 09 04 */	lfs f0, 0x904(r3)
/* 80589BE4  A8 03 09 A2 */	lha r0, 0x9a2(r3)
/* 80589BE8  FC 00 00 1E */	fctiwz f0, f0
/* 80589BEC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80589BF0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80589BF4  7C A5 07 34 */	extsh r5, r5
/* 80589BF8  7C 05 00 00 */	cmpw r5, r0
/* 80589BFC  40 82 00 24 */	bne lbl_80589C20
/* 80589C00  C0 03 09 08 */	lfs f0, 0x908(r3)
/* 80589C04  A8 03 09 A4 */	lha r0, 0x9a4(r3)
/* 80589C08  FC 00 00 1E */	fctiwz f0, f0
/* 80589C0C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80589C10  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80589C14  7C A5 07 34 */	extsh r5, r5
/* 80589C18  7C 05 00 00 */	cmpw r5, r0
/* 80589C1C  41 82 00 14 */	beq lbl_80589C30
lbl_80589C20:
/* 80589C20  88 A3 09 A6 */	lbz r5, 0x9a6(r3)
/* 80589C24  38 A5 FF FF */	addi r5, r5, -1
/* 80589C28  98 A3 09 A6 */	stb r5, 0x9a6(r3)
/* 80589C2C  48 00 02 AD */	bl aTMN0_setup_think_proc
lbl_80589C30:
/* 80589C30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80589C34  7C 08 03 A6 */	mtlr r0
/* 80589C38  38 21 00 10 */	addi r1, r1, 0x10
/* 80589C3C  4E 80 00 20 */	blr 
