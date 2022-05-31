lbl_8053E2BC:
/* 8053E2BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053E2C0  7C 08 02 A6 */	mflr r0
/* 8053E2C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053E2C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053E2CC  93 C1 00 08 */	stw r30, 8(r1)
/* 8053E2D0  7C 9E 23 78 */	mr r30, r4
/* 8053E2D4  38 7E 08 8C */	addi r3, r30, 0x88c
/* 8053E2D8  4B EC F1 E5 */	bl Matrix_Position_Zero
/* 8053E2DC  83 FE 08 84 */	lwz r31, 0x884(r30)
/* 8053E2E0  28 1F 00 00 */	cmplwi r31, 0
/* 8053E2E4  41 82 00 48 */	beq lbl_8053E32C
/* 8053E2E8  4B EC DE ED */	bl Matrix_push
/* 8053E2EC  C0 3E 08 8C */	lfs f1, 0x88c(r30)
/* 8053E2F0  38 60 00 00 */	li r3, 0
/* 8053E2F4  C0 5E 08 90 */	lfs f2, 0x890(r30)
/* 8053E2F8  C0 7E 08 94 */	lfs f3, 0x894(r30)
/* 8053E2FC  4B EC E0 05 */	bl Matrix_translate
/* 8053E300  3C 80 80 65 */	lis r4, lit_1598@ha /* 0x806493B8@ha */
/* 8053E304  38 60 00 01 */	li r3, 1
/* 8053E308  C0 24 93 B8 */	lfs f1, lit_1598@l(r4)  /* 0x806493B8@l */
/* 8053E30C  FC 40 08 90 */	fmr f2, f1
/* 8053E310  FC 60 08 90 */	fmr f3, f1
/* 8053E314  4B EC E0 D9 */	bl Matrix_scale
/* 8053E318  38 7F 01 78 */	addi r3, r31, 0x178
/* 8053E31C  4B EC DF 11 */	bl Matrix_get
/* 8053E320  38 00 00 01 */	li r0, 1
/* 8053E324  90 1F 01 B8 */	stw r0, 0x1b8(r31)
/* 8053E328  4B EC DE ED */	bl Matrix_pull
lbl_8053E32C:
/* 8053E32C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053E330  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053E334  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053E338  7C 08 03 A6 */	mtlr r0
/* 8053E33C  38 21 00 10 */	addi r1, r1, 0x10
/* 8053E340  4E 80 00 20 */	blr 
