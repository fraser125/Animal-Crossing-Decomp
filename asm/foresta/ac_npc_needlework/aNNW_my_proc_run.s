lbl_80565744:
/* 80565744  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80565748  7C 08 02 A6 */	mflr r0
/* 8056574C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80565750  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80565754  7C 9F 23 78 */	mr r31, r4
/* 80565758  93 C1 00 08 */	stw r30, 8(r1)
/* 8056575C  7C 7E 1B 78 */	mr r30, r3
/* 80565760  4B FF F5 E5 */	bl aNNW_next_target
/* 80565764  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80565768  2C 00 00 01 */	cmpwi r0, 1
/* 8056576C  41 82 00 14 */	beq lbl_80565780
/* 80565770  40 80 00 38 */	bge lbl_805657A8
/* 80565774  2C 00 00 00 */	cmpwi r0, 0
/* 80565778  40 80 00 1C */	bge lbl_80565794
/* 8056577C  48 00 00 2C */	b lbl_805657A8
lbl_80565780:
/* 80565780  7F C3 F3 78 */	mr r3, r30
/* 80565784  7F E4 FB 78 */	mr r4, r31
/* 80565788  38 A0 00 02 */	li r5, 2
/* 8056578C  4B FF FD E5 */	bl aNNW_my_proc_init
/* 80565790  48 00 00 40 */	b lbl_805657D0
lbl_80565794:
/* 80565794  7F C3 F3 78 */	mr r3, r30
/* 80565798  7F E4 FB 78 */	mr r4, r31
/* 8056579C  38 A0 00 00 */	li r5, 0
/* 805657A0  4B FF FD D1 */	bl aNNW_my_proc_init
/* 805657A4  48 00 00 2C */	b lbl_805657D0
lbl_805657A8:
/* 805657A8  88 1E 07 F5 */	lbz r0, 0x7f5(r30)
/* 805657AC  28 00 00 02 */	cmplwi r0, 2
/* 805657B0  40 82 00 20 */	bne lbl_805657D0
/* 805657B4  88 1E 07 F6 */	lbz r0, 0x7f6(r30)
/* 805657B8  28 00 00 FF */	cmplwi r0, 0xff
/* 805657BC  40 82 00 14 */	bne lbl_805657D0
/* 805657C0  7F C3 F3 78 */	mr r3, r30
/* 805657C4  7F E4 FB 78 */	mr r4, r31
/* 805657C8  38 A0 00 04 */	li r5, 4
/* 805657CC  4B FF FD A5 */	bl aNNW_my_proc_init
lbl_805657D0:
/* 805657D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805657D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805657D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805657DC  7C 08 03 A6 */	mtlr r0
/* 805657E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805657E4  4E 80 00 20 */	blr 
