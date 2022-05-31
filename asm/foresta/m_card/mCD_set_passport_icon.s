lbl_803FF6C0:
/* 803FF6C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FF6C4  7C 08 02 A6 */	mflr r0
/* 803FF6C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FF6CC  39 61 00 20 */	addi r11, r1, 0x20
/* 803FF6D0  4B C9 B8 05 */	bl func_8009AED4
/* 803FF6D4  28 03 00 00 */	cmplwi r3, 0
/* 803FF6D8  7C 9D 23 78 */	mr r29, r4
/* 803FF6DC  7C BE 2B 78 */	mr r30, r5
/* 803FF6E0  41 82 00 A0 */	beq lbl_803FF780
/* 803FF6E4  3C 80 80 66 */	lis r4, l_comment_player_0_str@ha /* 0x8065E5E8@ha */
/* 803FF6E8  7C 7F 1B 78 */	mr r31, r3
/* 803FF6EC  38 64 E5 E8 */	addi r3, r4, l_comment_player_0_str@l /* 0x8065E5E8@l */
/* 803FF6F0  38 A0 00 20 */	li r5, 0x20
/* 803FF6F4  7F E4 FB 78 */	mr r4, r31
/* 803FF6F8  4B C5 D9 25 */	bl func_8005D01C
/* 803FF6FC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803FF700  38 7F 00 20 */	addi r3, r31, 0x20
/* 803FF704  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803FF708  3C 84 00 02 */	addis r4, r4, 2
/* 803FF70C  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 803FF710  4B FF BE 29 */	bl mCD_get_passport_comment1
/* 803FF714  38 7F 00 40 */	addi r3, r31, 0x40
/* 803FF718  38 80 00 27 */	li r4, 0x27
/* 803FF71C  38 A0 0C 00 */	li r5, 0xc00
/* 803FF720  38 C0 00 01 */	li r6, 1
/* 803FF724  38 E0 02 00 */	li r7, 0x200
/* 803FF728  48 00 3E F5 */	bl mCD_set_bti_data
/* 803FF72C  2C 1D 00 00 */	cmpwi r29, 0
/* 803FF730  41 82 00 10 */	beq lbl_803FF740
/* 803FF734  2C 1D 00 01 */	cmpwi r29, 1
/* 803FF738  41 82 00 08 */	beq lbl_803FF740
/* 803FF73C  3B A0 00 00 */	li r29, 0
lbl_803FF740:
/* 803FF740  2C 1E 00 00 */	cmpwi r30, 0
/* 803FF744  41 80 00 0C */	blt lbl_803FF750
/* 803FF748  2C 1E 00 08 */	cmpwi r30, 8
/* 803FF74C  41 80 00 08 */	blt lbl_803FF754
lbl_803FF750:
/* 803FF750  3B C0 00 00 */	li r30, 0
lbl_803FF754:
/* 803FF754  3C 60 80 66 */	lis r3, icon_fileNo_3576@ha /* 0x8065EA04@ha */
/* 803FF758  57 A4 28 34 */	slwi r4, r29, 5
/* 803FF75C  38 63 EA 04 */	addi r3, r3, icon_fileNo_3576@l /* 0x8065EA04@l */
/* 803FF760  57 C0 10 3A */	slwi r0, r30, 2
/* 803FF764  7C 83 22 14 */	add r4, r3, r4
/* 803FF768  38 7F 0E 40 */	addi r3, r31, 0xe40
/* 803FF76C  7C 84 00 2E */	lwzx r4, r4, r0
/* 803FF770  38 A0 04 00 */	li r5, 0x400
/* 803FF774  38 C0 00 08 */	li r6, 8
/* 803FF778  38 E0 02 00 */	li r7, 0x200
/* 803FF77C  48 00 3E A1 */	bl mCD_set_bti_data
lbl_803FF780:
/* 803FF780  39 61 00 20 */	addi r11, r1, 0x20
/* 803FF784  4B C9 B7 9D */	bl func_8009AF20
/* 803FF788  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FF78C  7C 08 03 A6 */	mtlr r0
/* 803FF790  38 21 00 20 */	addi r1, r1, 0x20
/* 803FF794  4E 80 00 20 */	blr 
