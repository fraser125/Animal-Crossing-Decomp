lbl_8056FAD0:
/* 8056FAD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8056FAD4  7C 08 02 A6 */	mflr r0
/* 8056FAD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8056FADC  39 61 00 30 */	addi r11, r1, 0x30
/* 8056FAE0  4B B2 B3 F5 */	bl func_8009AED4
/* 8056FAE4  7C 9E 23 78 */	mr r30, r4
/* 8056FAE8  7C 7D 1B 78 */	mr r29, r3
/* 8056FAEC  7F C3 F3 78 */	mr r3, r30
/* 8056FAF0  4B E6 9B 51 */	bl get_player_actor_withoutCheck
/* 8056FAF4  38 00 00 01 */	li r0, 1
/* 8056FAF8  7C 7F 1B 78 */	mr r31, r3
/* 8056FAFC  98 1E 1F 51 */	stb r0, 0x1f51(r30)
/* 8056FB00  7F C3 F3 78 */	mr r3, r30
/* 8056FB04  38 80 00 00 */	li r4, 0
/* 8056FB08  38 A0 00 00 */	li r5, 0
/* 8056FB0C  4B E6 B2 79 */	bl mPlib_request_main_demo_wait_type1
/* 8056FB10  28 1F 00 00 */	cmplwi r31, 0
/* 8056FB14  41 82 00 1C */	beq lbl_8056FB30
/* 8056FB18  3C 60 80 65 */	lis r3, lit_714@ha /* 0x806498F4@ha */
/* 8056FB1C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8056FB20  C0 23 98 F4 */	lfs f1, lit_714@l(r3)  /* 0x806498F4@l */
/* 8056FB24  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 8056FB28  EC 01 00 2A */	fadds f0, f1, f0
/* 8056FB2C  48 00 00 14 */	b lbl_8056FB40
lbl_8056FB30:
/* 8056FB30  3C 80 80 65 */	lis r4, lit_706@ha /* 0x806498F0@ha */
/* 8056FB34  3C 60 80 65 */	lis r3, lit_715@ha /* 0x806498F8@ha */
/* 8056FB38  C0 44 98 F0 */	lfs f2, lit_706@l(r4)  /* 0x806498F0@l */
/* 8056FB3C  C0 03 98 F8 */	lfs f0, lit_715@l(r3)  /* 0x806498F8@l */
lbl_8056FB40:
/* 8056FB40  FC 20 10 1E */	fctiwz f1, f2
/* 8056FB44  7F A3 EB 78 */	mr r3, r29
/* 8056FB48  FC 00 00 1E */	fctiwz f0, f0
/* 8056FB4C  38 80 00 04 */	li r4, 4
/* 8056FB50  38 A0 00 02 */	li r5, 2
/* 8056FB54  38 C0 00 03 */	li r6, 3
/* 8056FB58  D8 21 00 08 */	stfd f1, 8(r1)
/* 8056FB5C  38 E0 00 00 */	li r7, 0
/* 8056FB60  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8056FB64  81 01 00 0C */	lwz r8, 0xc(r1)
/* 8056FB68  81 21 00 14 */	lwz r9, 0x14(r1)
/* 8056FB6C  4B FF F4 7D */	bl func_8056EFE8
/* 8056FB70  39 61 00 30 */	addi r11, r1, 0x30
/* 8056FB74  4B B2 B3 AD */	bl func_8009AF20
/* 8056FB78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8056FB7C  7C 08 03 A6 */	mtlr r0
/* 8056FB80  38 21 00 30 */	addi r1, r1, 0x30
/* 8056FB84  4E 80 00 20 */	blr 
