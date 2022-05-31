lbl_8063D59C:
/* 8063D59C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063D5A0  7C 08 02 A6 */	mflr r0
/* 8063D5A4  38 80 00 20 */	li r4, 0x20
/* 8063D5A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063D5AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063D5B0  7C 7F 1B 78 */	mr r31, r3
/* 8063D5B4  38 60 00 20 */	li r3, 0x20
/* 8063D5B8  4B D7 EE 71 */	bl func_803BC428
/* 8063D5BC  90 7F 08 50 */	stw r3, 0x850(r31)
/* 8063D5C0  3C 60 80 6E */	lis r3, int_tak_tailor_off_pal@ha /* 0x806DE120@ha */
/* 8063D5C4  3C A0 80 6E */	lis r5, int_tak_tailor_on_pal@ha /* 0x806DE100@ha */
/* 8063D5C8  7F E6 FB 78 */	mr r6, r31
/* 8063D5CC  38 83 E1 20 */	addi r4, r3, int_tak_tailor_off_pal@l /* 0x806DE120@l */
/* 8063D5D0  80 7F 08 50 */	lwz r3, 0x850(r31)
/* 8063D5D4  38 A5 E1 00 */	addi r5, r5, int_tak_tailor_on_pal@l /* 0x806DE100@l */
/* 8063D5D8  4B FF 14 E5 */	bl fFTR_MorphHousepaletteCt
/* 8063D5DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063D5E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063D5E4  7C 08 03 A6 */	mtlr r0
/* 8063D5E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8063D5EC  4E 80 00 20 */	blr 
