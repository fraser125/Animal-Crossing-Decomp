lbl_803C5C14:
/* 803C5C14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803C5C18  7C 08 02 A6 */	mflr r0
/* 803C5C1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803C5C20  39 61 00 30 */	addi r11, r1, 0x30
/* 803C5C24  4B CD 52 B1 */	bl func_8009AED4
/* 803C5C28  7C 7D 1B 78 */	mr r29, r3
/* 803C5C2C  7C 9E 23 78 */	mr r30, r4
/* 803C5C30  80 83 00 20 */	lwz r4, 0x20(r3)
/* 803C5C34  7C BF 2B 78 */	mr r31, r5
/* 803C5C38  38 61 00 18 */	addi r3, r1, 0x18
/* 803C5C3C  48 00 BF 55 */	bl mNpc_GetNpcWorldName
/* 803C5C40  38 00 00 01 */	li r0, 1
/* 803C5C44  3C 60 80 64 */	lis r3, lit_947@ha /* 0x80642630@ha */
/* 803C5C48  90 01 00 08 */	stw r0, 8(r1)
/* 803C5C4C  38 81 00 18 */	addi r4, r1, 0x18
/* 803C5C50  C0 63 26 30 */	lfs f3, lit_947@l(r3)  /* 0x80642630@l */
/* 803C5C54  7F C3 F3 78 */	mr r3, r30
/* 803C5C58  90 01 00 0C */	stw r0, 0xc(r1)
/* 803C5C5C  39 40 00 00 */	li r10, 0
/* 803C5C60  FC 80 18 90 */	fmr f4, f3
/* 803C5C64  93 E1 00 10 */	stw r31, 0x10(r1)
/* 803C5C68  80 BD 00 28 */	lwz r5, 0x28(r29)
/* 803C5C6C  C0 3D 00 2C */	lfs f1, 0x2c(r29)
/* 803C5C70  C0 5D 00 30 */	lfs f2, 0x30(r29)
/* 803C5C74  88 DD 02 B0 */	lbz r6, 0x2b0(r29)
/* 803C5C78  88 FD 02 B1 */	lbz r7, 0x2b1(r29)
/* 803C5C7C  89 1D 02 B2 */	lbz r8, 0x2b2(r29)
/* 803C5C80  89 3D 02 B3 */	lbz r9, 0x2b3(r29)
/* 803C5C84  4B FE A3 ED */	bl mFont_SetLineStrings_AndSpace
/* 803C5C88  39 61 00 30 */	addi r11, r1, 0x30
/* 803C5C8C  4B CD 52 95 */	bl func_8009AF20
/* 803C5C90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803C5C94  7C 08 03 A6 */	mtlr r0
/* 803C5C98  38 21 00 30 */	addi r1, r1, 0x30
/* 803C5C9C  4E 80 00 20 */	blr 
