lbl_8053E220:
/* 8053E220  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053E224  7C 08 02 A6 */	mflr r0
/* 8053E228  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053E22C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8053E230  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8053E234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053E238  93 C1 00 08 */	stw r30, 8(r1)
/* 8053E23C  7C 9E 23 78 */	mr r30, r4
/* 8053E240  38 7E 08 A8 */	addi r3, r30, 0x8a8
/* 8053E244  4B EC F2 79 */	bl Matrix_Position_Zero
/* 8053E248  83 FE 08 A0 */	lwz r31, 0x8a0(r30)
/* 8053E24C  28 1F 00 00 */	cmplwi r31, 0
/* 8053E250  41 82 00 4C */	beq lbl_8053E29C
/* 8053E254  3C 60 80 65 */	lis r3, lit_1606@ha /* 0x806493C0@ha */
/* 8053E258  3C 80 80 65 */	lis r4, lit_796@ha /* 0x8064937C@ha */
/* 8053E25C  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8053E260  C0 23 93 C0 */	lfs f1, lit_1606@l(r3)  /* 0x806493C0@l */
/* 8053E264  C0 44 93 7C */	lfs f2, lit_796@l(r4)  /* 0x8064937C@l */
/* 8053E268  EC 01 00 32 */	fmuls f0, f1, f0
/* 8053E26C  EF E2 00 24 */	fdivs f31, f2, f0
/* 8053E270  4B EC DF 65 */	bl Matrix_push
/* 8053E274  FC 20 F8 90 */	fmr f1, f31
/* 8053E278  38 60 00 01 */	li r3, 1
/* 8053E27C  FC 40 F8 90 */	fmr f2, f31
/* 8053E280  FC 60 F8 90 */	fmr f3, f31
/* 8053E284  4B EC E1 69 */	bl Matrix_scale
/* 8053E288  38 7F 01 78 */	addi r3, r31, 0x178
/* 8053E28C  4B EC DF A1 */	bl Matrix_get
/* 8053E290  38 00 00 01 */	li r0, 1
/* 8053E294  90 1F 01 B8 */	stw r0, 0x1b8(r31)
/* 8053E298  4B EC DF 7D */	bl Matrix_pull
lbl_8053E29C:
/* 8053E29C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8053E2A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053E2A4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8053E2A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053E2AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053E2B0  7C 08 03 A6 */	mtlr r0
/* 8053E2B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8053E2B8  4E 80 00 20 */	blr 
