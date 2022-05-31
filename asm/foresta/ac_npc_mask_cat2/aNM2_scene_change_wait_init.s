lbl_80560D3C:
/* 80560D3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80560D40  7C 08 02 A6 */	mflr r0
/* 80560D44  38 A0 00 01 */	li r5, 1
/* 80560D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80560D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80560D50  7C 9F 23 78 */	mr r31, r4
/* 80560D54  38 80 00 00 */	li r4, 0
/* 80560D58  7F E3 FB 78 */	mr r3, r31
/* 80560D5C  4B E9 05 5D */	bl goto_next_scene
/* 80560D60  38 00 00 03 */	li r0, 3
/* 80560D64  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80560D68  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80560D6C  98 1F 20 D1 */	stb r0, 0x20d1(r31)
/* 80560D70  3C 83 00 02 */	addis r4, r3, 2
/* 80560D74  38 60 00 04 */	li r3, 4
/* 80560D78  38 00 00 01 */	li r0, 1
/* 80560D7C  98 64 61 4F */	stb r3, 0x614f(r4)
/* 80560D80  38 60 41 C2 */	li r3, 0x41c2
/* 80560D84  98 04 65 21 */	stb r0, 0x6521(r4)
/* 80560D88  4B E1 AD 85 */	bl mBGMPsComp_make_ps_wipe
/* 80560D8C  38 60 00 12 */	li r3, 0x12
/* 80560D90  4B E1 BA 91 */	bl mBGMPsComp_scene_mode
/* 80560D94  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80560D98  38 00 00 17 */	li r0, 0x17
/* 80560D9C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80560DA0  3C 63 00 03 */	addis r3, r3, 3
/* 80560DA4  B0 03 85 92 */	sth r0, -0x7a6e(r3)
/* 80560DA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80560DAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80560DB0  7C 08 03 A6 */	mtlr r0
/* 80560DB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80560DB8  4E 80 00 20 */	blr 
