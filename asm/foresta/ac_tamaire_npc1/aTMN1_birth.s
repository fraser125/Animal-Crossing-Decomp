lbl_8058A938:
/* 8058A938  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058A93C  7C 08 02 A6 */	mflr r0
/* 8058A940  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058A944  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8058A948  7C 9F 23 78 */	mr r31, r4
/* 8058A94C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8058A950  7C 7E 1B 78 */	mr r30, r3
/* 8058A954  38 61 00 08 */	addi r3, r1, 8
/* 8058A958  4B E2 06 C1 */	bl mFI_SetOyasiroPos
/* 8058A95C  2C 03 00 00 */	cmpwi r3, 0
/* 8058A960  41 82 00 58 */	beq lbl_8058A9B8
/* 8058A964  A8 01 00 08 */	lha r0, 8(r1)
/* 8058A968  B0 1E 09 A6 */	sth r0, 0x9a6(r30)
/* 8058A96C  A8 61 00 0A */	lha r3, 0xa(r1)
/* 8058A970  38 03 00 28 */	addi r0, r3, 0x28
/* 8058A974  B0 1E 09 A8 */	sth r0, 0x9a8(r30)
/* 8058A978  A0 7E 00 06 */	lhz r3, 6(r30)
/* 8058A97C  3C 63 FF FF */	addis r3, r3, 0xffff
/* 8058A980  38 03 2F AC */	addi r0, r3, 0x2fac
/* 8058A984  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8058A988  41 82 00 14 */	beq lbl_8058A99C
/* 8058A98C  A8 7E 09 A6 */	lha r3, 0x9a6(r30)
/* 8058A990  38 03 00 C8 */	addi r0, r3, 0xc8
/* 8058A994  B0 1E 09 A6 */	sth r0, 0x9a6(r30)
/* 8058A998  48 00 00 10 */	b lbl_8058A9A8
lbl_8058A99C:
/* 8058A99C  A8 7E 09 A6 */	lha r3, 0x9a6(r30)
/* 8058A9A0  38 03 FF 60 */	addi r0, r3, -160
/* 8058A9A4  B0 1E 09 A6 */	sth r0, 0x9a6(r30)
lbl_8058A9A8:
/* 8058A9A8  7F C3 F3 78 */	mr r3, r30
/* 8058A9AC  7F E4 FB 78 */	mr r4, r31
/* 8058A9B0  38 A0 00 02 */	li r5, 2
/* 8058A9B4  48 00 08 99 */	bl aTMN1_setup_think_proc
lbl_8058A9B8:
/* 8058A9B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058A9BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8058A9C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8058A9C4  7C 08 03 A6 */	mtlr r0
/* 8058A9C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8058A9CC  4E 80 00 20 */	blr 
