lbl_803FC6E0:
/* 803FC6E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FC6E4  7C 08 02 A6 */	mflr r0
/* 803FC6E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FC6EC  39 61 00 20 */	addi r11, r1, 0x20
/* 803FC6F0  4B C9 E7 E5 */	bl func_8009AED4
/* 803FC6F4  80 C3 00 00 */	lwz r6, 0(r3)
/* 803FC6F8  3C A0 80 66 */	lis r5, l_mcd_file_table@ha /* 0x8065E708@ha */
/* 803FC6FC  7C 9D 23 78 */	mr r29, r4
/* 803FC700  2C 06 FF FF */	cmpwi r6, -1
/* 803FC704  38 E5 E7 08 */	addi r7, r5, l_mcd_file_table@l /* 0x8065E708@l */
/* 803FC708  41 82 00 5C */	beq lbl_803FC764
/* 803FC70C  1C A6 00 94 */	mulli r5, r6, 0x94
/* 803FC710  38 00 00 01 */	li r0, 1
/* 803FC714  90 03 01 9C */	stw r0, 0x19c(r3)
/* 803FC718  3C 80 80 66 */	lis r4, l_mCD_land_file_name_dummy@ha /* 0x8065E6A8@ha */
/* 803FC71C  3B E5 00 54 */	addi r31, r5, 0x54
/* 803FC720  80 A7 00 04 */	lwz r5, 4(r7)
/* 803FC724  7F E3 FA 14 */	add r31, r3, r31
/* 803FC728  38 64 E6 A8 */	addi r3, r4, l_mCD_land_file_name_dummy@l /* 0x8065E6A8@l */
/* 803FC72C  38 FF 00 74 */	addi r7, r31, 0x74
/* 803FC730  38 80 00 18 */	li r4, 0x18
/* 803FC734  39 1F 00 6C */	addi r8, r31, 0x6c
/* 803FC738  4B FF CF C1 */	bl mCD_create_file_bg
/* 803FC73C  7C 60 1B 78 */	mr r0, r3
/* 803FC740  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 803FC744  7C 1E 03 78 */	mr r30, r0
/* 803FC748  4B FF DB 6D */	bl mCD_TransErrorCode
/* 803FC74C  2C 1E 00 01 */	cmpwi r30, 1
/* 803FC750  90 7F 00 78 */	stw r3, 0x78(r31)
/* 803FC754  40 82 00 14 */	bne lbl_803FC768
/* 803FC758  38 00 00 09 */	li r0, 9
/* 803FC75C  90 1D 00 00 */	stw r0, 0(r29)
/* 803FC760  48 00 00 08 */	b lbl_803FC768
lbl_803FC764:
/* 803FC764  3B C0 FF FF */	li r30, -1
lbl_803FC768:
/* 803FC768  7F C3 F3 78 */	mr r3, r30
/* 803FC76C  39 61 00 20 */	addi r11, r1, 0x20
/* 803FC770  4B C9 E7 B1 */	bl func_8009AF20
/* 803FC774  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FC778  7C 08 03 A6 */	mtlr r0
/* 803FC77C  38 21 00 20 */	addi r1, r1, 0x20
/* 803FC780  4E 80 00 20 */	blr 
