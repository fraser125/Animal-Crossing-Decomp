lbl_8042AA78:
/* 8042AA78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042AA7C  7C 08 02 A6 */	mflr r0
/* 8042AA80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042AA84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042AA88  7C 7F 1B 78 */	mr r31, r3
/* 8042AA8C  88 03 01 9C */	lbz r0, 0x19c(r3)
/* 8042AA90  28 00 00 01 */	cmplwi r0, 1
/* 8042AA94  40 82 00 1C */	bne lbl_8042AAB0
/* 8042AA98  48 20 3A 99 */	bl sAdo_BgmFadeoutCheck
/* 8042AA9C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8042AAA0  28 00 00 01 */	cmplwi r0, 1
/* 8042AAA4  40 82 00 0C */	bne lbl_8042AAB0
/* 8042AAA8  7F E3 FB 78 */	mr r3, r31
/* 8042AAAC  4B FF FF 85 */	bl aID_set_first_field_bgm
lbl_8042AAB0:
/* 8042AAB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042AAB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042AAB8  7C 08 03 A6 */	mtlr r0
/* 8042AABC  38 21 00 10 */	addi r1, r1, 0x10
/* 8042AAC0  4E 80 00 20 */	blr 
