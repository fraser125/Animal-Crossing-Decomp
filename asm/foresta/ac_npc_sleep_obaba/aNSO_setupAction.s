lbl_8057E64C:
/* 8057E64C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057E650  7C 08 02 A6 */	mflr r0
/* 8057E654  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057E658  38 00 00 00 */	li r0, 0
/* 8057E65C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8057E660  7C 9F 23 78 */	mr r31, r4
/* 8057E664  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8057E668  7C 7E 1B 78 */	mr r30, r3
/* 8057E66C  98 03 07 F6 */	stb r0, 0x7f6(r3)
/* 8057E670  3C 60 80 6C */	lis r3, process@ha /* 0x806C09F0@ha */
/* 8057E674  54 80 10 3A */	slwi r0, r4, 2
/* 8057E678  93 FE 09 94 */	stw r31, 0x994(r30)
/* 8057E67C  38 63 09 F0 */	addi r3, r3, process@l /* 0x806C09F0@l */
/* 8057E680  7C 03 00 2E */	lwzx r0, r3, r0
/* 8057E684  90 1E 09 98 */	stw r0, 0x998(r30)
/* 8057E688  4B AD E6 6D */	bl fqrand
/* 8057E68C  3C 80 80 65 */	lis r4, lit_485@ha /* 0x80649A2C@ha */
/* 8057E690  7F C3 F3 78 */	mr r3, r30
/* 8057E694  38 A4 9A 2C */	addi r5, r4, lit_485@l /* 0x80649A2C@l */
/* 8057E698  C0 05 00 00 */	lfs f0, 0(r5)
/* 8057E69C  7F E4 FB 78 */	mr r4, r31
/* 8057E6A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8057E6A4  FC 00 00 1E */	fctiwz f0, f0
/* 8057E6A8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8057E6AC  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8057E6B0  38 05 00 02 */	addi r0, r5, 2
/* 8057E6B4  98 1E 07 53 */	stb r0, 0x753(r30)
/* 8057E6B8  4B FF FE E5 */	bl aNSO_set_animation
/* 8057E6BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057E6C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8057E6C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8057E6C8  7C 08 03 A6 */	mtlr r0
/* 8057E6CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8057E6D0  4E 80 00 20 */	blr 
