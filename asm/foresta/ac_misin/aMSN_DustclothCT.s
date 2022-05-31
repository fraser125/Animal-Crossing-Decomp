lbl_8042DE4C:
/* 8042DE4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042DE50  7C 08 02 A6 */	mflr r0
/* 8042DE54  38 80 00 20 */	li r4, 0x20
/* 8042DE58  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042DE5C  38 00 00 01 */	li r0, 1
/* 8042DE60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8042DE64  7C 7F 1B 78 */	mr r31, r3
/* 8042DE68  B0 03 00 00 */	sth r0, 0(r3)
/* 8042DE6C  38 00 00 00 */	li r0, 0
/* 8042DE70  38 60 02 20 */	li r3, 0x220
/* 8042DE74  B0 1F 00 02 */	sth r0, 2(r31)
/* 8042DE78  4B F8 E5 B1 */	bl func_803BC428
/* 8042DE7C  90 7F 00 28 */	stw r3, 0x28(r31)
/* 8042DE80  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 8042DE84  28 00 00 00 */	cmplwi r0, 0
/* 8042DE88  41 82 00 C8 */	beq lbl_8042DF50
/* 8042DE8C  4B C2 EE 69 */	bl fqrand
/* 8042DE90  3C 60 80 64 */	lis r3, data_8064414C@ha /* 0x8064414C@ha */
/* 8042DE94  C0 03 41 4C */	lfs f0, data_8064414C@l(r3)  /* 0x8064414C@l */
/* 8042DE98  EC 00 00 72 */	fmuls f0, f0, f1
/* 8042DE9C  FC 00 00 1E */	fctiwz f0, f0
/* 8042DEA0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8042DEA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042DEA8  2C 00 00 01 */	cmpwi r0, 1
/* 8042DEAC  40 82 00 4C */	bne lbl_8042DEF8
/* 8042DEB0  4B C2 EE 45 */	bl fqrand
/* 8042DEB4  3C 60 80 64 */	lis r3, lit_452@ha /* 0x80644150@ha */
/* 8042DEB8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8042DEBC  38 A3 41 50 */	addi r5, r3, lit_452@l /* 0x80644150@l */
/* 8042DEC0  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8042DEC4  C0 05 00 00 */	lfs f0, 0(r5)
/* 8042DEC8  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 8042DECC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8042DED0  FC 00 00 1E */	fctiwz f0, f0
/* 8042DED4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8042DED8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8042DEDC  54 84 07 7E */	clrlwi r4, r4, 0x1d
/* 8042DEE0  1C 84 02 20 */	mulli r4, r4, 0x220
/* 8042DEE4  7C 80 22 14 */	add r4, r0, r4
/* 8042DEE8  3C 84 00 02 */	addis r4, r4, 2
/* 8042DEEC  38 84 14 00 */	addi r4, r4, 0x1400
/* 8042DEF0  4B F9 BC E1 */	bl mNW_CopyOriginalTextureClass
/* 8042DEF4  48 00 00 5C */	b lbl_8042DF50
lbl_8042DEF8:
/* 8042DEF8  38 60 00 20 */	li r3, 0x20
/* 8042DEFC  38 80 00 20 */	li r4, 0x20
/* 8042DF00  4B F8 E5 29 */	bl func_803BC428
/* 8042DF04  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 8042DF08  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8042DF0C  28 00 00 00 */	cmplwi r0, 0
/* 8042DF10  41 82 00 40 */	beq lbl_8042DF50
/* 8042DF14  38 81 00 08 */	addi r4, r1, 8
/* 8042DF18  38 60 00 00 */	li r3, 0
/* 8042DF1C  38 A0 00 01 */	li r5, 1
/* 8042DF20  38 C0 00 00 */	li r6, 0
/* 8042DF24  38 E0 00 00 */	li r7, 0
/* 8042DF28  39 00 00 02 */	li r8, 2
/* 8042DF2C  39 20 00 08 */	li r9, 8
/* 8042DF30  39 40 00 00 */	li r10, 0
/* 8042DF34  4B FB A4 A9 */	bl mSP_SelectRandomItem_New
/* 8042DF38  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8042DF3C  A0 01 00 08 */	lhz r0, 8(r1)
/* 8042DF40  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 8042DF44  38 63 00 20 */	addi r3, r3, 0x20
/* 8042DF48  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8042DF4C  4B FA B8 81 */	bl mPlib_Load_PlayerTexAndPallet
lbl_8042DF50:
/* 8042DF50  3C 60 80 64 */	lis r3, lit_453@ha /* 0x80644154@ha */
/* 8042DF54  38 00 00 01 */	li r0, 1
/* 8042DF58  38 A3 41 54 */	addi r5, r3, lit_453@l /* 0x80644154@l */
/* 8042DF5C  3C 60 80 64 */	lis r3, lit_454@ha /* 0x80644158@ha */
/* 8042DF60  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8042DF64  38 83 41 58 */	addi r4, r3, lit_454@l /* 0x80644158@l */
/* 8042DF68  C0 05 00 00 */	lfs f0, 0(r5)
/* 8042DF6C  3C 60 80 64 */	lis r3, lit_455@ha /* 0x8064415C@ha */
/* 8042DF70  C0 24 00 00 */	lfs f1, 0(r4)
/* 8042DF74  38 83 41 5C */	addi r4, r3, lit_455@l /* 0x8064415C@l */
/* 8042DF78  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8042DF7C  3C 60 80 68 */	lis r3, aMSN_dustcloth_target_table@ha /* 0x80684BDC@ha */
/* 8042DF80  C0 04 00 00 */	lfs f0, 0(r4)
/* 8042DF84  38 03 4B DC */	addi r0, r3, aMSN_dustcloth_target_table@l /* 0x80684BDC@l */
/* 8042DF88  D0 3F 00 08 */	stfs f1, 8(r31)
/* 8042DF8C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8042DF90  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8042DF94  38 63 FF FF */	addi r3, r3, -1
/* 8042DF98  54 63 07 BE */	clrlwi r3, r3, 0x1e
/* 8042DF9C  1C 63 00 0C */	mulli r3, r3, 0xc
/* 8042DFA0  7C 80 1A 14 */	add r4, r0, r3
/* 8042DFA4  80 64 00 00 */	lwz r3, 0(r4)
/* 8042DFA8  80 04 00 04 */	lwz r0, 4(r4)
/* 8042DFAC  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8042DFB0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8042DFB4  80 04 00 08 */	lwz r0, 8(r4)
/* 8042DFB8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8042DFBC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8042DFC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042DFC4  7C 08 03 A6 */	mtlr r0
/* 8042DFC8  38 21 00 20 */	addi r1, r1, 0x20
/* 8042DFCC  4E 80 00 20 */	blr 
