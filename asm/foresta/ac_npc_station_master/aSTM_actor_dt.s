lbl_8057F100:
/* 8057F100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057F104  7C 08 02 A6 */	mflr r0
/* 8057F108  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057F10C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057F110  7C 9F 23 78 */	mr r31, r4
/* 8057F114  93 C1 00 08 */	stw r30, 8(r1)
/* 8057F118  7C 7E 1B 78 */	mr r30, r3
/* 8057F11C  88 63 09 A5 */	lbz r3, 0x9a5(r3)
/* 8057F120  28 03 00 00 */	cmplwi r3, 0
/* 8057F124  41 82 00 0C */	beq lbl_8057F130
/* 8057F128  38 80 01 68 */	li r4, 0x168
/* 8057F12C  4B DF D1 F9 */	bl mBGMPsComp_delete_ps_demo
lbl_8057F130:
/* 8057F130  88 7E 09 A6 */	lbz r3, 0x9a6(r30)
/* 8057F134  2C 03 00 48 */	cmpwi r3, 0x48
/* 8057F138  41 82 00 14 */	beq lbl_8057F14C
/* 8057F13C  40 80 00 18 */	bge lbl_8057F154
/* 8057F140  2C 03 00 2F */	cmpwi r3, 0x2f
/* 8057F144  41 82 00 08 */	beq lbl_8057F14C
/* 8057F148  48 00 00 0C */	b lbl_8057F154
lbl_8057F14C:
/* 8057F14C  38 80 01 68 */	li r4, 0x168
/* 8057F150  4B DF D2 31 */	bl mBGMPsComp_delete_ps_happening
lbl_8057F154:
/* 8057F154  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8057F158  7F C3 F3 78 */	mr r3, r30
/* 8057F15C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8057F160  7F E4 FB 78 */	mr r4, r31
/* 8057F164  3C A5 00 02 */	addis r5, r5, 2
/* 8057F168  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8057F16C  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 8057F170  7D 89 03 A6 */	mtctr r12
/* 8057F174  4E 80 04 21 */	bctrl 
/* 8057F178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057F17C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057F180  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057F184  7C 08 03 A6 */	mtlr r0
/* 8057F188  38 21 00 10 */	addi r1, r1, 0x10
/* 8057F18C  4E 80 00 20 */	blr 
