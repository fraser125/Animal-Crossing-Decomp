lbl_80376F30:
/* 80376F30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80376F34  7C 08 02 A6 */	mflr r0
/* 80376F38  3C 80 80 65 */	lis r4, mActorShadow_offset0@ha /* 0x8064F430@ha */
/* 80376F3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80376F40  38 C4 F4 30 */	addi r6, r4, mActorShadow_offset0@l /* 0x8064F430@l */
/* 80376F44  3C 80 80 64 */	lis r4, lit_400@ha /* 0x80641240@ha */
/* 80376F48  81 26 00 00 */	lwz r9, 0(r6)
/* 80376F4C  38 E4 12 40 */	addi r7, r4, lit_400@l /* 0x80641240@l */
/* 80376F50  81 06 00 04 */	lwz r8, 4(r6)
/* 80376F54  7C A4 2B 78 */	mr r4, r5
/* 80376F58  80 06 00 08 */	lwz r0, 8(r6)
/* 80376F5C  38 C1 00 08 */	addi r6, r1, 8
/* 80376F60  91 21 00 08 */	stw r9, 8(r1)
/* 80376F64  38 A0 00 00 */	li r5, 0
/* 80376F68  C0 27 00 00 */	lfs f1, 0(r7)
/* 80376F6C  91 01 00 0C */	stw r8, 0xc(r1)
/* 80376F70  90 01 00 10 */	stw r0, 0x10(r1)
/* 80376F74  4B FF FE 55 */	bl mAc_ActorShadowDraw
/* 80376F78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80376F7C  7C 08 03 A6 */	mtlr r0
/* 80376F80  38 21 00 20 */	addi r1, r1, 0x20
/* 80376F84  4E 80 00 20 */	blr 
