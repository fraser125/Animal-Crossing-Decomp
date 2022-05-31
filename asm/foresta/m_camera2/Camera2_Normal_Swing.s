lbl_8037E6EC:
/* 8037E6EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8037E6F0  7C 08 02 A6 */	mflr r0
/* 8037E6F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8037E6F8  39 61 00 40 */	addi r11, r1, 0x40
/* 8037E6FC  4B D1 C7 D9 */	bl func_8009AED4
/* 8037E700  7C 7D 1B 78 */	mr r29, r3
/* 8037E704  7C BE 2B 78 */	mr r30, r5
/* 8037E708  48 05 AF 39 */	bl get_player_actor_withoutCheck
/* 8037E70C  3B E3 00 48 */	addi r31, r3, 0x48
/* 8037E710  7F A3 EB 78 */	mr r3, r29
/* 8037E714  7F E4 FB 78 */	mr r4, r31
/* 8037E718  38 A1 00 14 */	addi r5, r1, 0x14
/* 8037E71C  38 C1 00 10 */	addi r6, r1, 0x10
/* 8037E720  4B FF FE 6D */	bl Camera2_Get_PosBlockRatio
/* 8037E724  80 DF 00 00 */	lwz r6, 0(r31)
/* 8037E728  38 61 00 0C */	addi r3, r1, 0xc
/* 8037E72C  80 1F 00 04 */	lwz r0, 4(r31)
/* 8037E730  38 81 00 08 */	addi r4, r1, 8
/* 8037E734  38 A1 00 18 */	addi r5, r1, 0x18
/* 8037E738  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8037E73C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8037E740  80 1F 00 08 */	lwz r0, 8(r31)
/* 8037E744  90 01 00 20 */	stw r0, 0x20(r1)
/* 8037E748  48 02 70 19 */	bl mFI_Wpos2BlockNum
/* 8037E74C  80 01 00 08 */	lwz r0, 8(r1)
/* 8037E750  2C 00 00 01 */	cmpwi r0, 1
/* 8037E754  40 82 00 3C */	bne lbl_8037E790
/* 8037E758  3C 60 80 64 */	lis r3, lit_474@ha /* 0x80641354@ha */
/* 8037E75C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8037E760  C0 03 13 54 */	lfs f0, lit_474@l(r3)  /* 0x80641354@l */
/* 8037E764  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8037E768  40 80 00 28 */	bge lbl_8037E790
/* 8037E76C  3C 60 80 64 */	lis r3, lit_672@ha /* 0x806413B0@ha */
/* 8037E770  A8 9E 00 00 */	lha r4, 0(r30)
/* 8037E774  C0 03 13 B0 */	lfs f0, lit_672@l(r3)  /* 0x806413B0@l */
/* 8037E778  EC 00 00 72 */	fmuls f0, f0, f1
/* 8037E77C  FC 00 00 1E */	fctiwz f0, f0
/* 8037E780  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8037E784  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8037E788  7C 04 02 14 */	add r0, r4, r0
/* 8037E78C  B0 1E 00 00 */	sth r0, 0(r30)
lbl_8037E790:
/* 8037E790  39 61 00 40 */	addi r11, r1, 0x40
/* 8037E794  4B D1 C7 8D */	bl func_8009AF20
/* 8037E798  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8037E79C  7C 08 03 A6 */	mtlr r0
/* 8037E7A0  38 21 00 40 */	addi r1, r1, 0x40
/* 8037E7A4  4E 80 00 20 */	blr 
