lbl_8050D70C:
/* 8050D70C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050D710  7C 08 02 A6 */	mflr r0
/* 8050D714  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050D718  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8050D71C  7C 7F 1B 78 */	mr r31, r3
/* 8050D720  38 BF 00 28 */	addi r5, r31, 0x28
/* 8050D724  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8050D728  7C 9E 23 78 */	mr r30, r4
/* 8050D72C  38 80 00 B0 */	li r4, 0xb0
/* 8050D730  48 12 08 15 */	bl sAdo_OngenPos
/* 8050D734  3C 60 80 65 */	lis r3, lit_442@ha /* 0x80648E78@ha */
/* 8050D738  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8050D73C  C0 23 8E 78 */	lfs f1, lit_442@l(r3)  /* 0x80648E78@l */
/* 8050D740  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8050D744  40 80 00 10 */	bge lbl_8050D754
/* 8050D748  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8050D74C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8050D750  41 80 00 DC */	blt lbl_8050D82C
lbl_8050D754:
/* 8050D754  80 1F 01 78 */	lwz r0, 0x178(r31)
/* 8050D758  2C 00 00 04 */	cmpwi r0, 4
/* 8050D75C  41 82 00 10 */	beq lbl_8050D76C
/* 8050D760  4B E9 B3 FD */	bl mFI_GetPlayerWade
/* 8050D764  2C 03 00 00 */	cmpwi r3, 0
/* 8050D768  40 82 00 0C */	bne lbl_8050D774
lbl_8050D76C:
/* 8050D76C  7F E3 FB 78 */	mr r3, r31
/* 8050D770  4B E6 6B A5 */	bl Actor_position_moveF
lbl_8050D774:
/* 8050D774  81 9F 01 74 */	lwz r12, 0x174(r31)
/* 8050D778  7F E3 FB 78 */	mr r3, r31
/* 8050D77C  7F C4 F3 78 */	mr r4, r30
/* 8050D780  7D 89 03 A6 */	mtctr r12
/* 8050D784  4E 80 04 21 */	bctrl 
/* 8050D788  7F E3 FB 78 */	mr r3, r31
/* 8050D78C  4B FF F2 91 */	bl aBEE_anime_proc
/* 8050D790  3C 60 80 65 */	lis r3, lit_537@ha /* 0x80648EAC@ha */
/* 8050D794  3C 80 80 65 */	lis r4, lit_457@ha /* 0x80648E84@ha */
/* 8050D798  38 A3 8E AC */	addi r5, r3, lit_537@l /* 0x80648EAC@l */
/* 8050D79C  C8 E4 8E 84 */	lfd f7, lit_457@l(r4)  /* 0x80648E84@l */
/* 8050D7A0  C9 05 00 00 */	lfd f8, 0(r5)
/* 8050D7A4  3C 60 80 65 */	lis r3, lit_458@ha /* 0x80648E8C@ha */
/* 8050D7A8  38 C3 8E 8C */	addi r6, r3, lit_458@l /* 0x80648E8C@l */
/* 8050D7AC  3C 80 80 65 */	lis r4, lit_546@ha /* 0x80648ED4@ha */
/* 8050D7B0  FC 20 40 34 */	frsqrte f1, f8
/* 8050D7B4  3C 60 80 65 */	lis r3, lit_456@ha /* 0x80648E7C@ha */
/* 8050D7B8  38 A3 8E 7C */	addi r5, r3, lit_456@l /* 0x80648E7C@l */
/* 8050D7BC  C8 C6 00 00 */	lfd f6, 0(r6)
/* 8050D7C0  3C 60 80 65 */	lis r3, lit_442@ha /* 0x80648E78@ha */
/* 8050D7C4  C0 05 00 00 */	lfs f0, 0(r5)
/* 8050D7C8  FC 41 00 72 */	fmul f2, f1, f1
/* 8050D7CC  C0 83 8E 78 */	lfs f4, lit_442@l(r3)  /* 0x80648E78@l */
/* 8050D7D0  C0 64 8E D4 */	lfs f3, lit_546@l(r4)  /* 0x80648ED4@l */
/* 8050D7D4  38 7F 00 2C */	addi r3, r31, 0x2c
/* 8050D7D8  FC A7 00 72 */	fmul f5, f7, f1
/* 8050D7DC  C0 3F 04 34 */	lfs f1, 0x434(r31)
/* 8050D7E0  FC 48 00 B2 */	fmul f2, f8, f2
/* 8050D7E4  FC 46 10 28 */	fsub f2, f6, f2
/* 8050D7E8  FC A5 00 B2 */	fmul f5, f5, f2
/* 8050D7EC  FC 45 01 72 */	fmul f2, f5, f5
/* 8050D7F0  FC A7 01 72 */	fmul f5, f7, f5
/* 8050D7F4  FC 48 00 B2 */	fmul f2, f8, f2
/* 8050D7F8  FC 46 10 28 */	fsub f2, f6, f2
/* 8050D7FC  FC A5 00 B2 */	fmul f5, f5, f2
/* 8050D800  FC 45 01 72 */	fmul f2, f5, f5
/* 8050D804  FC A7 01 72 */	fmul f5, f7, f5
/* 8050D808  FC 48 00 B2 */	fmul f2, f8, f2
/* 8050D80C  FC 46 10 28 */	fsub f2, f6, f2
/* 8050D810  FC 45 00 B2 */	fmul f2, f5, f2
/* 8050D814  FC 48 00 B2 */	fmul f2, f8, f2
/* 8050D818  FC 40 10 18 */	frsp f2, f2
/* 8050D81C  D0 41 00 08 */	stfs f2, 8(r1)
/* 8050D820  C0 41 00 08 */	lfs f2, 8(r1)
/* 8050D824  EC 40 10 28 */	fsubs f2, f0, f2
/* 8050D828  4B EA D9 89 */	bl add_calc
lbl_8050D82C:
/* 8050D82C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050D830  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8050D834  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8050D838  7C 08 03 A6 */	mtlr r0
/* 8050D83C  38 21 00 20 */	addi r1, r1, 0x20
/* 8050D840  4E 80 00 20 */	blr 
