lbl_8058CDA4:
/* 8058CDA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058CDA8  7C 08 02 A6 */	mflr r0
/* 8058CDAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058CDB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058CDB4  7C 9F 23 78 */	mr r31, r4
/* 8058CDB8  38 80 00 08 */	li r4, 8
/* 8058CDBC  93 C1 00 08 */	stw r30, 8(r1)
/* 8058CDC0  7C 7E 1B 78 */	mr r30, r3
/* 8058CDC4  38 60 00 0F */	li r3, 0xf
/* 8058CDC8  4B E1 10 05 */	bl mEv_get_save_area
/* 8058CDCC  A0 03 00 02 */	lhz r0, 2(r3)
/* 8058CDD0  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8058CDD4  40 82 00 2C */	bne lbl_8058CE00
/* 8058CDD8  A0 9E 00 06 */	lhz r4, 6(r30)
/* 8058CDDC  38 A0 00 01 */	li r5, 1
/* 8058CDE0  88 C3 00 01 */	lbz r6, 1(r3)
/* 8058CDE4  3C 64 FF FF */	addis r3, r4, 0xffff
/* 8058CDE8  38 03 2F D3 */	addi r0, r3, 0x2fd3
/* 8058CDEC  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 8058CDF0  7C A0 00 30 */	slw r0, r5, r0
/* 8058CDF4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8058CDF8  7C C0 00 39 */	and. r0, r6, r0
/* 8058CDFC  41 82 00 14 */	beq lbl_8058CE10
lbl_8058CE00:
/* 8058CE00  7F C3 F3 78 */	mr r3, r30
/* 8058CE04  7F E4 FB 78 */	mr r4, r31
/* 8058CE08  38 A0 00 14 */	li r5, 0x14
/* 8058CE0C  48 00 07 11 */	bl aTKN1_setup_think_proc
lbl_8058CE10:
/* 8058CE10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058CE14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058CE18  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058CE1C  7C 08 03 A6 */	mtlr r0
/* 8058CE20  38 21 00 10 */	addi r1, r1, 0x10
/* 8058CE24  4E 80 00 20 */	blr 
