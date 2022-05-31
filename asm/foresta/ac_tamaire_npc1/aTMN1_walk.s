lbl_8058A9D0:
/* 8058A9D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058A9D4  7C 08 02 A6 */	mflr r0
/* 8058A9D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058A9DC  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8058A9E0  28 00 00 02 */	cmplwi r0, 2
/* 8058A9E4  40 82 00 10 */	bne lbl_8058A9F4
/* 8058A9E8  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 8058A9EC  28 00 00 FF */	cmplwi r0, 0xff
/* 8058A9F0  41 82 00 44 */	beq lbl_8058AA34
lbl_8058A9F4:
/* 8058A9F4  C0 03 09 04 */	lfs f0, 0x904(r3)
/* 8058A9F8  A8 03 09 A2 */	lha r0, 0x9a2(r3)
/* 8058A9FC  FC 00 00 1E */	fctiwz f0, f0
/* 8058AA00  D8 01 00 08 */	stfd f0, 8(r1)
/* 8058AA04  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8058AA08  7C A5 07 34 */	extsh r5, r5
/* 8058AA0C  7C 05 00 00 */	cmpw r5, r0
/* 8058AA10  40 82 00 24 */	bne lbl_8058AA34
/* 8058AA14  C0 03 09 08 */	lfs f0, 0x908(r3)
/* 8058AA18  A8 03 09 A4 */	lha r0, 0x9a4(r3)
/* 8058AA1C  FC 00 00 1E */	fctiwz f0, f0
/* 8058AA20  D8 01 00 08 */	stfd f0, 8(r1)
/* 8058AA24  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8058AA28  7C A5 07 34 */	extsh r5, r5
/* 8058AA2C  7C 05 00 00 */	cmpw r5, r0
/* 8058AA30  41 82 00 10 */	beq lbl_8058AA40
lbl_8058AA34:
/* 8058AA34  38 A0 00 05 */	li r5, 5
/* 8058AA38  48 00 08 15 */	bl aTMN1_setup_think_proc
/* 8058AA3C  48 00 00 3C */	b lbl_8058AA78
lbl_8058AA40:
/* 8058AA40  88 03 09 58 */	lbz r0, 0x958(r3)
/* 8058AA44  28 00 00 00 */	cmplwi r0, 0
/* 8058AA48  41 82 00 28 */	beq lbl_8058AA70
/* 8058AA4C  A8 A3 09 A0 */	lha r5, 0x9a0(r3)
/* 8058AA50  2C 05 00 00 */	cmpwi r5, 0
/* 8058AA54  40 81 00 10 */	ble lbl_8058AA64
/* 8058AA58  38 05 FF FF */	addi r0, r5, -1
/* 8058AA5C  B0 03 09 A0 */	sth r0, 0x9a0(r3)
/* 8058AA60  48 00 00 18 */	b lbl_8058AA78
lbl_8058AA64:
/* 8058AA64  38 A0 00 05 */	li r5, 5
/* 8058AA68  48 00 07 E5 */	bl aTMN1_setup_think_proc
/* 8058AA6C  48 00 00 0C */	b lbl_8058AA78
lbl_8058AA70:
/* 8058AA70  38 00 00 14 */	li r0, 0x14
/* 8058AA74  B0 03 09 A0 */	sth r0, 0x9a0(r3)
lbl_8058AA78:
/* 8058AA78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058AA7C  7C 08 03 A6 */	mtlr r0
/* 8058AA80  38 21 00 10 */	addi r1, r1, 0x10
/* 8058AA84  4E 80 00 20 */	blr 
