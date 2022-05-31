lbl_8053D548:
/* 8053D548  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053D54C  7C 08 02 A6 */	mflr r0
/* 8053D550  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053D554  39 61 00 20 */	addi r11, r1, 0x20
/* 8053D558  4B B5 D9 7D */	bl func_8009AED4
/* 8053D55C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8053D560  7C 9D 23 78 */	mr r29, r4
/* 8053D564  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8053D568  7C 7F 1B 78 */	mr r31, r3
/* 8053D56C  3C 85 00 02 */	addis r4, r5, 2
/* 8053D570  3B C0 00 00 */	li r30, 0
/* 8053D574  80 84 60 78 */	lwz r4, 0x6078(r4)
/* 8053D578  81 84 00 00 */	lwz r12, 0(r4)
/* 8053D57C  28 0C 00 00 */	cmplwi r12, 0
/* 8053D580  41 82 00 2C */	beq lbl_8053D5AC
/* 8053D584  7D 89 03 A6 */	mtctr r12
/* 8053D588  4E 80 04 21 */	bctrl 
/* 8053D58C  2C 03 00 01 */	cmpwi r3, 1
/* 8053D590  40 82 00 1C */	bne lbl_8053D5AC
/* 8053D594  38 00 00 00 */	li r0, 0
/* 8053D598  7F E3 FB 78 */	mr r3, r31
/* 8053D59C  98 1F 07 C9 */	stb r0, 0x7c9(r31)
/* 8053D5A0  7F A4 EB 78 */	mr r4, r29
/* 8053D5A4  4B FF FD 51 */	bl aNPC_setup_talk_start
/* 8053D5A8  3B C0 00 01 */	li r30, 1
lbl_8053D5AC:
/* 8053D5AC  7F C3 F3 78 */	mr r3, r30
/* 8053D5B0  39 61 00 20 */	addi r11, r1, 0x20
/* 8053D5B4  4B B5 D9 6D */	bl func_8009AF20
/* 8053D5B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053D5BC  7C 08 03 A6 */	mtlr r0
/* 8053D5C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8053D5C4  4E 80 00 20 */	blr 
