lbl_80413C28:
/* 80413C28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80413C2C  7C 08 02 A6 */	mflr r0
/* 80413C30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80413C34  39 61 00 20 */	addi r11, r1, 0x20
/* 80413C38  4B C8 72 99 */	bl func_8009AED0
/* 80413C3C  3C A0 80 64 */	lis r5, lit_472@ha /* 0x806439AC@ha */
/* 80413C40  7C 7C 1B 78 */	mr r28, r3
/* 80413C44  C0 25 39 AC */	lfs f1, lit_472@l(r5)  /* 0x806439AC@l */
/* 80413C48  38 60 00 01 */	li r3, 1
/* 80413C4C  83 E4 00 00 */	lwz r31, 0(r4)
/* 80413C50  FC 60 08 90 */	fmr f3, f1
/* 80413C54  C0 5C 01 E8 */	lfs f2, 0x1e8(r28)
/* 80413C58  83 DF 02 D0 */	lwz r30, 0x2d0(r31)
/* 80413C5C  4B FF 86 A5 */	bl Matrix_translate
/* 80413C60  A8 7C 02 00 */	lha r3, 0x200(r28)
/* 80413C64  38 C0 00 01 */	li r6, 1
/* 80413C68  A8 9C 02 02 */	lha r4, 0x202(r28)
/* 80413C6C  A8 BC 02 04 */	lha r5, 0x204(r28)
/* 80413C70  4B FF 8D 25 */	bl Matrix_rotateXYZ
/* 80413C74  3C 00 E7 00 */	lis r0, 0xe700
/* 80413C78  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 80413C7C  90 1E 00 00 */	stw r0, 0(r30)
/* 80413C80  38 80 00 00 */	li r4, 0
/* 80413C84  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 80413C88  7F E3 FB 78 */	mr r3, r31
/* 80413C8C  90 9E 00 04 */	stw r4, 4(r30)
/* 80413C90  3B DE 00 08 */	addi r30, r30, 8
/* 80413C94  7F DD F3 78 */	mr r29, r30
/* 80413C98  90 1E 00 00 */	stw r0, 0(r30)
/* 80413C9C  3B DE 00 08 */	addi r30, r30, 8
/* 80413CA0  4B FF 97 35 */	bl _Matrix_to_Mtx_new
/* 80413CA4  90 7D 00 04 */	stw r3, 4(r29)
/* 80413CA8  7F C4 F3 78 */	mr r4, r30
/* 80413CAC  3C 00 DE 00 */	lis r0, 0xde00
/* 80413CB0  3C 60 80 66 */	lis r3, data_8065FAF8@ha /* 0x8065FAF8@ha */
/* 80413CB4  90 1E 00 00 */	stw r0, 0(r30)
/* 80413CB8  38 63 FA F8 */	addi r3, r3, data_8065FAF8@l /* 0x8065FAF8@l */
/* 80413CBC  3B DE 00 08 */	addi r30, r30, 8
/* 80413CC0  80 1C 01 F8 */	lwz r0, 0x1f8(r28)
/* 80413CC4  54 00 10 3A */	slwi r0, r0, 2
/* 80413CC8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80413CCC  90 04 00 04 */	stw r0, 4(r4)
/* 80413CD0  93 DF 02 D0 */	stw r30, 0x2d0(r31)
/* 80413CD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80413CD8  4B C8 72 45 */	bl func_8009AF1C
/* 80413CDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80413CE0  7C 08 03 A6 */	mtlr r0
/* 80413CE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80413CE8  4E 80 00 20 */	blr 
