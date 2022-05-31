lbl_8054A170:
/* 8054A170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A174  7C 08 02 A6 */	mflr r0
/* 8054A178  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8054A17C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A180  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054A184  7C 9F 23 78 */	mr r31, r4
/* 8054A188  93 C1 00 08 */	stw r30, 8(r1)
/* 8054A18C  7C 7E 1B 78 */	mr r30, r3
/* 8054A190  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8054A194  3C 63 00 02 */	addis r3, r3, 2
/* 8054A198  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 8054A19C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8054A1A0  28 00 00 00 */	cmplwi r0, 0
/* 8054A1A4  40 82 00 1C */	bne lbl_8054A1C0
/* 8054A1A8  4B E7 55 01 */	bl func_803BF6A8
/* 8054A1AC  4B E7 6B A1 */	bl mMsg_Unset_LockContinue
/* 8054A1B0  7F C3 F3 78 */	mr r3, r30
/* 8054A1B4  7F E4 FB 78 */	mr r4, r31
/* 8054A1B8  38 A0 00 0F */	li r5, 0xf
/* 8054A1BC  48 00 0D 61 */	bl aNSC_setupAction
lbl_8054A1C0:
/* 8054A1C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A1C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054A1C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054A1CC  7C 08 03 A6 */	mtlr r0
/* 8054A1D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A1D4  4E 80 00 20 */	blr 
