lbl_80413808:
/* 80413808  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041380C  7C 08 02 A6 */	mflr r0
/* 80413810  90 01 00 24 */	stw r0, 0x24(r1)
/* 80413814  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80413818  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8041381C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80413820  93 C1 00 08 */	stw r30, 8(r1)
/* 80413824  7C 7E 1B 78 */	mr r30, r3
/* 80413828  7C 9F 23 78 */	mr r31, r4
/* 8041382C  38 7E 00 28 */	addi r3, r30, 0x28
/* 80413830  38 9F 00 28 */	addi r4, r31, 0x28
/* 80413834  4B FA 77 A1 */	bl search_position_distance
/* 80413838  FF E0 08 90 */	fmr f31, f1
/* 8041383C  38 7F 00 28 */	addi r3, r31, 0x28
/* 80413840  38 9E 00 28 */	addi r4, r30, 0x28
/* 80413844  4B FA 78 ED */	bl search_position_angleY
/* 80413848  3C 80 80 64 */	lis r4, lit_845@ha /* 0x80643A60@ha */
/* 8041384C  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 80413850  C0 04 3A 60 */	lfs f0, lit_845@l(r4)  /* 0x80643A60@l */
/* 80413854  7C 03 00 50 */	subf r0, r3, r0
/* 80413858  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8041385C  7C 03 07 34 */	extsh r3, r0
/* 80413860  40 80 00 24 */	bge lbl_80413884
/* 80413864  7C 60 07 35 */	extsh. r0, r3
/* 80413868  7C 03 00 D0 */	neg r0, r3
/* 8041386C  41 80 00 08 */	blt lbl_80413874
/* 80413870  7C 60 1B 78 */	mr r0, r3
lbl_80413874:
/* 80413874  2C 00 20 00 */	cmpwi r0, 0x2000
/* 80413878  40 80 00 0C */	bge lbl_80413884
/* 8041387C  38 60 00 01 */	li r3, 1
/* 80413880  48 00 00 08 */	b lbl_80413888
lbl_80413884:
/* 80413884  38 60 00 00 */	li r3, 0
lbl_80413888:
/* 80413888  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8041388C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80413890  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80413894  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80413898  83 C1 00 08 */	lwz r30, 8(r1)
/* 8041389C  7C 08 03 A6 */	mtlr r0
/* 804138A0  38 21 00 20 */	addi r1, r1, 0x20
/* 804138A4  4E 80 00 20 */	blr 
