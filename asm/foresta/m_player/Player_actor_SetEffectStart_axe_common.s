lbl_804D9770:
/* 804D9770  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D9774  7C 08 02 A6 */	mflr r0
/* 804D9778  3C A0 80 64 */	lis r5, lit_2697@ha /* 0x80646C50@ha */
/* 804D977C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D9780  C0 25 6C 50 */	lfs f1, lit_2697@l(r5)  /* 0x80646C50@l */
/* 804D9784  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804D9788  7C 9F 23 78 */	mr r31, r4
/* 804D978C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804D9790  7C 7E 1B 78 */	mr r30, r3
/* 804D9794  38 7E 01 74 */	addi r3, r30, 0x174
/* 804D9798  4B FF DE 69 */	bl Player_actor_Check_AnimationFrame
/* 804D979C  2C 03 00 00 */	cmpwi r3, 0
/* 804D97A0  41 82 00 64 */	beq lbl_804D9804
/* 804D97A4  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 804D97A8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804D97AC  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 804D97B0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804D97B4  3C 63 00 02 */	addis r3, r3, 2
/* 804D97B8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804D97BC  90 81 00 08 */	stw r4, 8(r1)
/* 804D97C0  7F E7 FB 78 */	mr r7, r31
/* 804D97C4  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804D97C8  38 81 00 08 */	addi r4, r1, 8
/* 804D97CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804D97D0  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804D97D4  38 60 00 3E */	li r3, 0x3e
/* 804D97D8  38 A0 00 02 */	li r5, 2
/* 804D97DC  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 804D97E0  39 40 00 01 */	li r10, 1
/* 804D97E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804D97E8  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 804D97EC  81 86 00 00 */	lwz r12, 0(r6)
/* 804D97F0  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804D97F4  A8 DE 00 DE */	lha r6, 0xde(r30)
/* 804D97F8  7C 09 07 34 */	extsh r9, r0
/* 804D97FC  7D 89 03 A6 */	mtctr r12
/* 804D9800  4E 80 04 21 */	bctrl 
lbl_804D9804:
/* 804D9804  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D9808  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804D980C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804D9810  7C 08 03 A6 */	mtlr r0
/* 804D9814  38 21 00 20 */	addi r1, r1, 0x20
/* 804D9818  4E 80 00 20 */	blr 
