lbl_805743C4:
/* 805743C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805743C8  7C 08 02 A6 */	mflr r0
/* 805743CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805743D0  39 61 00 20 */	addi r11, r1, 0x20
/* 805743D4  4B B2 6B 01 */	bl func_8009AED4
/* 805743D8  7C 7E 1B 78 */	mr r30, r3
/* 805743DC  7C 9F 23 78 */	mr r31, r4
/* 805743E0  80 63 01 4C */	lwz r3, 0x14c(r3)
/* 805743E4  80 03 01 74 */	lwz r0, 0x174(r3)
/* 805743E8  2C 00 00 0D */	cmpwi r0, 0xd
/* 805743EC  40 82 00 80 */	bne lbl_8057446C
/* 805743F0  80 03 01 90 */	lwz r0, 0x190(r3)
/* 805743F4  2C 00 00 00 */	cmpwi r0, 0
/* 805743F8  40 82 00 64 */	bne lbl_8057445C
/* 805743FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80574400  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80574404  3C 63 00 02 */	addis r3, r3, 2
/* 80574408  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8057440C  88 03 10 A2 */	lbz r0, 0x10a2(r3)
/* 80574410  8B A3 00 14 */	lbz r29, 0x14(r3)
/* 80574414  28 00 00 00 */	cmplwi r0, 0
/* 80574418  7F BD 07 74 */	extsb r29, r29
/* 8057441C  41 82 00 1C */	beq lbl_80574438
/* 80574420  3C 60 80 6C */	lis r3, destiny_pact@ha /* 0x806BF6C8@ha */
/* 80574424  54 00 10 3A */	slwi r0, r0, 2
/* 80574428  38 63 F6 C8 */	addi r3, r3, destiny_pact@l /* 0x806BF6C8@l */
/* 8057442C  7C 63 02 14 */	add r3, r3, r0
/* 80574430  80 63 FF FC */	lwz r3, -4(r3)
/* 80574434  4B E3 FB E5 */	bl mISL_SetNowPlayerAction
lbl_80574438:
/* 80574438  28 1D 00 02 */	cmplwi r29, 2
/* 8057443C  40 80 00 18 */	bge lbl_80574454
/* 80574440  3C 60 80 6C */	lis r3, sex_pact@ha /* 0x806BF6DC@ha */
/* 80574444  57 A0 10 3A */	slwi r0, r29, 2
/* 80574448  38 63 F6 DC */	addi r3, r3, sex_pact@l /* 0x806BF6DC@l */
/* 8057444C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80574450  4B E3 FB C9 */	bl mISL_SetNowPlayerAction
lbl_80574454:
/* 80574454  38 A0 00 0F */	li r5, 0xf
/* 80574458  48 00 00 08 */	b lbl_80574460
lbl_8057445C:
/* 8057445C  38 A0 00 10 */	li r5, 0x10
lbl_80574460:
/* 80574460  7F C3 F3 78 */	mr r3, r30
/* 80574464  7F E4 FB 78 */	mr r4, r31
/* 80574468  48 00 02 01 */	bl aSEN_setup_think_proc
lbl_8057446C:
/* 8057446C  39 61 00 20 */	addi r11, r1, 0x20
/* 80574470  4B B2 6A B1 */	bl func_8009AF20
/* 80574474  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80574478  7C 08 03 A6 */	mtlr r0
/* 8057447C  38 21 00 20 */	addi r1, r1, 0x20
/* 80574480  4E 80 00 20 */	blr 
