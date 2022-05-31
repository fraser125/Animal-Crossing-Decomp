lbl_8058C7C4:
/* 8058C7C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058C7C8  7C 08 02 A6 */	mflr r0
/* 8058C7CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058C7D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058C7D4  7C 9F 23 78 */	mr r31, r4
/* 8058C7D8  38 80 00 08 */	li r4, 8
/* 8058C7DC  93 C1 00 08 */	stw r30, 8(r1)
/* 8058C7E0  7C 7E 1B 78 */	mr r30, r3
/* 8058C7E4  38 60 00 0F */	li r3, 0xf
/* 8058C7E8  4B E1 15 E5 */	bl mEv_get_save_area
/* 8058C7EC  28 03 00 00 */	cmplwi r3, 0
/* 8058C7F0  41 82 00 54 */	beq lbl_8058C844
/* 8058C7F4  88 03 00 00 */	lbz r0, 0(r3)
/* 8058C7F8  28 00 00 02 */	cmplwi r0, 2
/* 8058C7FC  40 82 00 48 */	bne lbl_8058C844
/* 8058C800  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8058C804  60 00 00 10 */	ori r0, r0, 0x10
/* 8058C808  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8058C80C  A0 7E 00 06 */	lhz r3, 6(r30)
/* 8058C810  3C 63 FF FF */	addis r3, r3, 0xffff
/* 8058C814  38 03 2F D2 */	addi r0, r3, 0x2fd2
/* 8058C818  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8058C81C  40 82 00 18 */	bne lbl_8058C834
/* 8058C820  7F C3 F3 78 */	mr r3, r30
/* 8058C824  7F E4 FB 78 */	mr r4, r31
/* 8058C828  38 A0 00 06 */	li r5, 6
/* 8058C82C  48 00 0C F1 */	bl aTKN1_setup_think_proc
/* 8058C830  48 00 00 14 */	b lbl_8058C844
lbl_8058C834:
/* 8058C834  7F C3 F3 78 */	mr r3, r30
/* 8058C838  7F E4 FB 78 */	mr r4, r31
/* 8058C83C  38 A0 00 12 */	li r5, 0x12
/* 8058C840  48 00 0C DD */	bl aTKN1_setup_think_proc
lbl_8058C844:
/* 8058C844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058C848  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058C84C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058C850  7C 08 03 A6 */	mtlr r0
/* 8058C854  38 21 00 10 */	addi r1, r1, 0x10
/* 8058C858  4E 80 00 20 */	blr 
