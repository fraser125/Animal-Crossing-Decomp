lbl_80568690:
/* 80568690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80568694  7C 08 02 A6 */	mflr r0
/* 80568698  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056869C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805686A0  7C 9F 23 78 */	mr r31, r4
/* 805686A4  93 C1 00 08 */	stw r30, 8(r1)
/* 805686A8  7C 7E 1B 78 */	mr r30, r3
/* 805686AC  4B FF F3 51 */	bl aNPS2_setup_voice_option
/* 805686B0  2C 03 00 01 */	cmpwi r3, 1
/* 805686B4  40 82 00 14 */	bne lbl_805686C8
/* 805686B8  7F C3 F3 78 */	mr r3, r30
/* 805686BC  7F E4 FB 78 */	mr r4, r31
/* 805686C0  38 A0 00 03 */	li r5, 3
/* 805686C4  48 00 17 05 */	bl aNPS2_change_talk_proc
lbl_805686C8:
/* 805686C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805686CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805686D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805686D4  7C 08 03 A6 */	mtlr r0
/* 805686D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805686DC  4E 80 00 20 */	blr 
