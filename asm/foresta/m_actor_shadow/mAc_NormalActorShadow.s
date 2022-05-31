lbl_80376E9C:
/* 80376E9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80376EA0  7C 08 02 A6 */	mflr r0
/* 80376EA4  3C A0 80 65 */	lis r5, mActorShadow_offset0@ha /* 0x8064F430@ha */
/* 80376EA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80376EAC  39 25 F4 30 */	addi r9, r5, mActorShadow_offset0@l /* 0x8064F430@l */
/* 80376EB0  38 C1 00 08 */	addi r6, r1, 8
/* 80376EB4  38 A0 00 00 */	li r5, 0
/* 80376EB8  81 09 00 00 */	lwz r8, 0(r9)
/* 80376EBC  80 E9 00 04 */	lwz r7, 4(r9)
/* 80376EC0  80 09 00 08 */	lwz r0, 8(r9)
/* 80376EC4  91 01 00 08 */	stw r8, 8(r1)
/* 80376EC8  90 E1 00 0C */	stw r7, 0xc(r1)
/* 80376ECC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80376ED0  4B FF FE F9 */	bl mAc_ActorShadowDraw
/* 80376ED4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80376ED8  7C 08 03 A6 */	mtlr r0
/* 80376EDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80376EE0  4E 80 00 20 */	blr 
