lbl_8049E870:
/* 8049E870  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049E874  7C 08 02 A6 */	mflr r0
/* 8049E878  3C C0 80 69 */	lis r6, data_8068E358@ha /* 0x8068E358@ha */
/* 8049E87C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8049E880  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049E884  38 C6 E3 58 */	addi r6, r6, data_8068E358@l /* 0x8068E358@l */
/* 8049E888  38 00 00 05 */	li r0, 5
/* 8049E88C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8049E890  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049E894  7C 9F 23 78 */	mr r31, r4
/* 8049E898  38 86 00 B4 */	addi r4, r6, 0xb4
/* 8049E89C  93 C1 00 08 */	stw r30, 8(r1)
/* 8049E8A0  7C 7E 1B 78 */	mr r30, r3
/* 8049E8A4  38 60 00 00 */	li r3, 0
/* 8049E8A8  80 E5 00 14 */	lwz r7, 0x14(r5)
/* 8049E8AC  38 A0 00 00 */	li r5, 0
/* 8049E8B0  7C 09 03 A6 */	mtctr r0
lbl_8049E8B4:
/* 8049E8B4  7C 04 18 2E */	lwzx r0, r4, r3
/* 8049E8B8  7C 07 00 00 */	cmpw r7, r0
/* 8049E8BC  40 82 00 0C */	bne lbl_8049E8C8
/* 8049E8C0  B0 BE 00 24 */	sth r5, 0x24(r30)
/* 8049E8C4  B0 BE 01 90 */	sth r5, 0x190(r30)
lbl_8049E8C8:
/* 8049E8C8  38 A5 00 01 */	addi r5, r5, 1
/* 8049E8CC  38 63 00 04 */	addi r3, r3, 4
/* 8049E8D0  42 00 FF E4 */	bdnz lbl_8049E8B4
/* 8049E8D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049E8D8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049E8DC  3C 63 00 03 */	addis r3, r3, 3
/* 8049E8E0  80 03 88 9C */	lwz r0, -0x7764(r3)
/* 8049E8E4  2C 00 00 03 */	cmpwi r0, 3
/* 8049E8E8  40 82 00 18 */	bne lbl_8049E900
/* 8049E8EC  A8 1E 00 24 */	lha r0, 0x24(r30)
/* 8049E8F0  2C 00 00 04 */	cmpwi r0, 4
/* 8049E8F4  41 82 00 0C */	beq lbl_8049E900
/* 8049E8F8  38 00 00 01 */	li r0, 1
/* 8049E8FC  90 1E 01 A8 */	stw r0, 0x1a8(r30)
lbl_8049E900:
/* 8049E900  A8 7E 01 90 */	lha r3, 0x190(r30)
/* 8049E904  38 86 00 84 */	addi r4, r6, 0x84
/* 8049E908  38 A6 00 78 */	addi r5, r6, 0x78
/* 8049E90C  38 00 00 00 */	li r0, 0
/* 8049E910  54 66 08 3C */	slwi r6, r3, 1
/* 8049E914  7F C3 F3 78 */	mr r3, r30
/* 8049E918  7C C4 32 AE */	lhax r6, r4, r6
/* 8049E91C  7F E4 FB 78 */	mr r4, r31
/* 8049E920  B0 DE 01 74 */	sth r6, 0x174(r30)
/* 8049E924  A8 DE 01 90 */	lha r6, 0x190(r30)
/* 8049E928  54 C6 08 3C */	slwi r6, r6, 1
/* 8049E92C  7C A5 32 AE */	lhax r5, r5, r6
/* 8049E930  B0 BE 01 76 */	sth r5, 0x176(r30)
/* 8049E934  B0 1E 01 78 */	sth r0, 0x178(r30)
/* 8049E938  B0 1E 01 78 */	sth r0, 0x178(r30)
/* 8049E93C  90 1E 01 7C */	stw r0, 0x17c(r30)
/* 8049E940  90 1E 01 80 */	stw r0, 0x180(r30)
/* 8049E944  90 1E 01 84 */	stw r0, 0x184(r30)
/* 8049E948  90 1E 01 88 */	stw r0, 0x188(r30)
/* 8049E94C  90 1E 01 8C */	stw r0, 0x18c(r30)
/* 8049E950  4B FF FC BD */	bl func_8049E60C
/* 8049E954  7F C3 F3 78 */	mr r3, r30
/* 8049E958  7F E4 FB 78 */	mr r4, r31
/* 8049E95C  4B FF FE 45 */	bl aSI_ShopIndoorCopy
/* 8049E960  7F C3 F3 78 */	mr r3, r30
/* 8049E964  38 80 00 00 */	li r4, 0
/* 8049E968  4B FF FE 9D */	bl aSI_SetClipProc
/* 8049E96C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049E970  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049E974  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049E978  7C 08 03 A6 */	mtlr r0
/* 8049E97C  38 21 00 10 */	addi r1, r1, 0x10
/* 8049E980  4E 80 00 20 */	blr 
