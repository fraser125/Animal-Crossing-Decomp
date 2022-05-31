lbl_80404EF4:
/* 80404EF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80404EF8  7C 08 02 A6 */	mflr r0
/* 80404EFC  3C A0 81 16 */	lis r5, debug_mode@ha /* 0x81166138@ha */
/* 80404F00  3C 80 81 1C */	lis r4, game_GameFrame@ha /* 0x811C530C@ha */
/* 80404F04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80404F08  38 A5 61 38 */	addi r5, r5, debug_mode@l /* 0x81166138@l */
/* 80404F0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80404F10  93 C1 00 08 */	stw r30, 8(r1)
/* 80404F14  7C 7E 1B 78 */	mr r30, r3
/* 80404F18  80 A5 00 00 */	lwz r5, 0(r5)
/* 80404F1C  88 04 53 0C */	lbz r0, game_GameFrame@l(r4)  /* 0x811C530C@l */
/* 80404F20  A8 65 01 10 */	lha r3, 0x110(r5)
/* 80404F24  83 FE 00 00 */	lwz r31, 0(r30)
/* 80404F28  7C 03 00 00 */	cmpw r3, r0
/* 80404F2C  40 82 00 10 */	bne lbl_80404F3C
/* 80404F30  A8 05 01 0E */	lha r0, 0x10e(r5)
/* 80404F34  2C 00 00 00 */	cmpwi r0, 0
/* 80404F38  41 82 00 08 */	beq lbl_80404F40
lbl_80404F3C:
/* 80404F3C  4B FF FE F9 */	bl SetGameFrame
lbl_80404F40:
/* 80404F40  7F E3 FB 78 */	mr r3, r31
/* 80404F44  4B FF FE 15 */	bl game_draw_first
/* 80404F48  38 00 00 05 */	li r0, 5
/* 80404F4C  98 1F 03 48 */	stb r0, 0x348(r31)
/* 80404F50  4B FE EB 3D */	bl mTM_time
/* 80404F54  38 60 00 06 */	li r3, 6
/* 80404F58  38 00 00 07 */	li r0, 7
/* 80404F5C  98 7F 03 48 */	stb r3, 0x348(r31)
/* 80404F60  7F C3 F3 78 */	mr r3, r30
/* 80404F64  98 1F 03 48 */	stb r0, 0x348(r31)
/* 80404F68  81 9E 00 04 */	lwz r12, 4(r30)
/* 80404F6C  7D 89 03 A6 */	mtctr r12
/* 80404F70  4E 80 04 21 */	bctrl 
/* 80404F74  38 60 00 08 */	li r3, 8
/* 80404F78  38 00 00 09 */	li r0, 9
/* 80404F7C  98 7F 03 48 */	stb r3, 0x348(r31)
/* 80404F80  7F C3 F3 78 */	mr r3, r30
/* 80404F84  98 1F 03 48 */	stb r0, 0x348(r31)
/* 80404F88  4B F7 7C E9 */	bl mBGM_main
/* 80404F8C  38 00 00 0A */	li r0, 0xa
/* 80404F90  7F C3 F3 78 */	mr r3, r30
/* 80404F94  98 1F 03 48 */	stb r0, 0x348(r31)
/* 80404F98  4B FF FB E9 */	bl func_80404B80
/* 80404F9C  80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 80404FA0  38 03 00 01 */	addi r0, r3, 1
/* 80404FA4  90 1E 00 A0 */	stw r0, 0xa0(r30)
/* 80404FA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80404FAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80404FB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80404FB4  7C 08 03 A6 */	mtlr r0
/* 80404FB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80404FBC  4E 80 00 20 */	blr 
