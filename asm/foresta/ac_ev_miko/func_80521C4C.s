lbl_80521C4C:
/* 80521C4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80521C50  7C 08 02 A6 */	mflr r0
/* 80521C54  90 01 00 34 */	stw r0, 0x34(r1)
/* 80521C58  39 61 00 30 */	addi r11, r1, 0x30
/* 80521C5C  4B B7 92 79 */	bl func_8009AED4
/* 80521C60  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80521C64  7C 7E 1B 78 */	mr r30, r3
/* 80521C68  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80521C6C  7C 9D 23 78 */	mr r29, r4
/* 80521C70  3F E5 00 02 */	addis r31, r5, 2
/* 80521C74  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 80521C78  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 80521C7C  7D 89 03 A6 */	mtctr r12
/* 80521C80  4E 80 04 21 */	bctrl 
/* 80521C84  2C 03 00 01 */	cmpwi r3, 1
/* 80521C88  40 82 00 C8 */	bne lbl_80521D50
/* 80521C8C  80 9F 60 4C */	lwz r4, 0x604c(r31)
/* 80521C90  3C 60 80 6A */	lis r3, ct_data@ha /* 0x806A09FC@ha */
/* 80521C94  38 A3 09 FC */	addi r5, r3, ct_data@l /* 0x806A09FC@l */
/* 80521C98  81 84 00 D0 */	lwz r12, 0xd0(r4)
/* 80521C9C  7F C3 F3 78 */	mr r3, r30
/* 80521CA0  7F A4 EB 78 */	mr r4, r29
/* 80521CA4  7D 89 03 A6 */	mtctr r12
/* 80521CA8  4E 80 04 21 */	bctrl 
/* 80521CAC  38 C0 00 00 */	li r6, 0
/* 80521CB0  3C 60 80 65 */	lis r3, data_8064914C@ha /* 0x8064914C@ha */
/* 80521CB4  98 DE 08 30 */	stb r6, 0x830(r30)
/* 80521CB8  38 A0 FF FF */	li r5, -1
/* 80521CBC  38 83 91 4C */	addi r4, r3, data_8064914C@l /* 0x8064914C@l */
/* 80521CC0  38 00 00 FF */	li r0, 0xff
/* 80521CC4  90 BE 08 F4 */	stw r5, 0x8f4(r30)
/* 80521CC8  38 61 00 08 */	addi r3, r1, 8
/* 80521CCC  C0 24 00 00 */	lfs f1, 0(r4)
/* 80521CD0  98 1E 00 D6 */	stb r0, 0xd6(r30)
/* 80521CD4  98 DE 09 59 */	stb r6, 0x959(r30)
/* 80521CD8  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 80521CDC  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80521CE0  90 81 00 08 */	stw r4, 8(r1)
/* 80521CE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80521CE8  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 80521CEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80521CF0  4B E6 DC A9 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 80521CF4  3C 60 80 65 */	lis r3, data_8064914C@ha /* 0x8064914C@ha */
/* 80521CF8  3C 80 80 65 */	lis r4, lit_472@ha /* 0x80649150@ha */
/* 80521CFC  38 C3 91 4C */	addi r6, r3, data_8064914C@l /* 0x8064914C@l */
/* 80521D00  3C 60 80 65 */	lis r3, lit_473@ha /* 0x80649154@ha */
/* 80521D04  D0 3E 00 2C */	stfs f1, 0x2c(r30)
/* 80521D08  38 A4 91 50 */	addi r5, r4, lit_472@l /* 0x80649150@l */
/* 80521D0C  C0 26 00 00 */	lfs f1, 0(r6)
/* 80521D10  38 83 91 54 */	addi r4, r3, lit_473@l /* 0x80649154@l */
/* 80521D14  C0 05 00 00 */	lfs f0, 0(r5)
/* 80521D18  7F C3 F3 78 */	mr r3, r30
/* 80521D1C  D0 3E 00 6C */	stfs f1, 0x6c(r30)
/* 80521D20  C0 44 00 00 */	lfs f2, 0(r4)
/* 80521D24  D0 3E 00 78 */	stfs f1, 0x78(r30)
/* 80521D28  D0 3E 00 7C */	stfs f1, 0x7c(r30)
/* 80521D2C  D0 1E 01 44 */	stfs f0, 0x144(r30)
/* 80521D30  80 9F 60 4C */	lwz r4, 0x604c(r31)
/* 80521D34  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80521D38  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80521D3C  81 84 01 1C */	lwz r12, 0x11c(r4)
/* 80521D40  EC 22 08 2A */	fadds f1, f2, f1
/* 80521D44  EC 42 00 2A */	fadds f2, f2, f0
/* 80521D48  7D 89 03 A6 */	mtctr r12
/* 80521D4C  4E 80 04 21 */	bctrl 
lbl_80521D50:
/* 80521D50  39 61 00 30 */	addi r11, r1, 0x30
/* 80521D54  4B B7 91 CD */	bl func_8009AF20
/* 80521D58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80521D5C  7C 08 03 A6 */	mtlr r0
/* 80521D60  38 21 00 30 */	addi r1, r1, 0x30
/* 80521D64  4E 80 00 20 */	blr 
