lbl_80387C60:
/* 80387C60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80387C64  7C 08 02 A6 */	mflr r0
/* 80387C68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80387C6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80387C70  4B D1 32 59 */	bl func_8009AEC8
/* 80387C74  7C 9B 23 78 */	mr r27, r4
/* 80387C78  7C DC 33 78 */	mr r28, r6
/* 80387C7C  7C 7A 1B 78 */	mr r26, r3
/* 80387C80  7C FD 3B 78 */	mr r29, r7
/* 80387C84  7D 1E 43 78 */	mr r30, r8
/* 80387C88  7D 3F 4B 78 */	mr r31, r9
/* 80387C8C  7F 63 DB 78 */	mr r3, r27
/* 80387C90  7F 84 E3 78 */	mr r4, r28
/* 80387C94  38 BB 00 20 */	addi r5, r27, 0x20
/* 80387C98  48 00 2F 11 */	bl mCoBG_GetPointInfoFrontLine
/* 80387C9C  2C 03 00 00 */	cmpwi r3, 0
/* 80387CA0  41 82 00 A8 */	beq lbl_80387D48
/* 80387CA4  88 1E 00 02 */	lbz r0, 2(r30)
/* 80387CA8  2C 00 00 00 */	cmpwi r0, 0
/* 80387CAC  41 82 00 08 */	beq lbl_80387CB4
/* 80387CB0  48 00 00 5C */	b lbl_80387D0C
lbl_80387CB4:
/* 80387CB4  7F 63 DB 78 */	mr r3, r27
/* 80387CB8  7F 85 E3 78 */	mr r5, r28
/* 80387CBC  38 9B 00 08 */	addi r4, r27, 8
/* 80387CC0  48 00 35 C5 */	bl mCoBG_RangeCheckLinePoint
/* 80387CC4  2C 03 00 00 */	cmpwi r3, 0
/* 80387CC8  41 82 00 80 */	beq lbl_80387D48
/* 80387CCC  7F 63 DB 78 */	mr r3, r27
/* 80387CD0  4B FF F3 F1 */	bl mCoBG_GetWallKind
/* 80387CD4  7C 60 07 34 */	extsh r0, r3
/* 80387CD8  3C 80 80 65 */	lis r4, dist_rev_proc@ha /* 0x80650CCC@ha */
/* 80387CDC  54 00 10 3A */	slwi r0, r0, 2
/* 80387CE0  7F 43 D3 78 */	mr r3, r26
/* 80387CE4  38 84 0C CC */	addi r4, r4, dist_rev_proc@l /* 0x80650CCC@l */
/* 80387CE8  7F 85 E3 78 */	mr r5, r28
/* 80387CEC  7D 84 00 2E */	lwzx r12, r4, r0
/* 80387CF0  7F 64 DB 78 */	mr r4, r27
/* 80387CF4  7F A6 EB 78 */	mr r6, r29
/* 80387CF8  7F C7 F3 78 */	mr r7, r30
/* 80387CFC  7F E8 FB 78 */	mr r8, r31
/* 80387D00  7D 89 03 A6 */	mtctr r12
/* 80387D04  4E 80 04 21 */	bctrl 
/* 80387D08  48 00 00 40 */	b lbl_80387D48
lbl_80387D0C:
/* 80387D0C  7F 63 DB 78 */	mr r3, r27
/* 80387D10  4B FF F3 B1 */	bl mCoBG_GetWallKind
/* 80387D14  7C 60 07 34 */	extsh r0, r3
/* 80387D18  3C 80 80 65 */	lis r4, dist_rev_proc_player@ha /* 0x80650CD8@ha */
/* 80387D1C  54 00 10 3A */	slwi r0, r0, 2
/* 80387D20  7F 43 D3 78 */	mr r3, r26
/* 80387D24  38 84 0C D8 */	addi r4, r4, dist_rev_proc_player@l /* 0x80650CD8@l */
/* 80387D28  7F 85 E3 78 */	mr r5, r28
/* 80387D2C  7D 84 00 2E */	lwzx r12, r4, r0
/* 80387D30  7F 64 DB 78 */	mr r4, r27
/* 80387D34  7F A6 EB 78 */	mr r6, r29
/* 80387D38  7F C7 F3 78 */	mr r7, r30
/* 80387D3C  7F E8 FB 78 */	mr r8, r31
/* 80387D40  7D 89 03 A6 */	mtctr r12
/* 80387D44  4E 80 04 21 */	bctrl 
lbl_80387D48:
/* 80387D48  39 61 00 20 */	addi r11, r1, 0x20
/* 80387D4C  4B D1 31 C9 */	bl func_8009AF14
/* 80387D50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80387D54  7C 08 03 A6 */	mtlr r0
/* 80387D58  38 21 00 20 */	addi r1, r1, 0x20
/* 80387D5C  4E 80 00 20 */	blr 
