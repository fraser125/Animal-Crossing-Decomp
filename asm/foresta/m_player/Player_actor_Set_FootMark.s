lbl_804F1BD8:
/* 804F1BD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F1BDC  7C 08 02 A6 */	mflr r0
/* 804F1BE0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804F1BE4  7C 87 23 78 */	mr r7, r4
/* 804F1BE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F1BEC  7C 69 1B 78 */	mr r9, r3
/* 804F1BF0  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804F1BF4  38 81 00 08 */	addi r4, r1, 8
/* 804F1BF8  80 C3 10 E8 */	lwz r6, 0x10e8(r3)
/* 804F1BFC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804F1C00  80 09 10 EC */	lwz r0, 0x10ec(r9)
/* 804F1C04  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804F1C08  3C 63 00 02 */	addis r3, r3, 2
/* 804F1C0C  38 A0 00 02 */	li r5, 2
/* 804F1C10  90 C1 00 08 */	stw r6, 8(r1)
/* 804F1C14  39 40 00 00 */	li r10, 0
/* 804F1C18  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804F1C1C  38 60 00 43 */	li r3, 0x43
/* 804F1C20  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F1C24  80 09 10 F0 */	lwz r0, 0x10f0(r9)
/* 804F1C28  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F1C2C  80 09 00 98 */	lwz r0, 0x98(r9)
/* 804F1C30  81 86 00 00 */	lwz r12, 0(r6)
/* 804F1C34  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804F1C38  A8 C9 00 36 */	lha r6, 0x36(r9)
/* 804F1C3C  7C 09 07 34 */	extsh r9, r0
/* 804F1C40  7D 89 03 A6 */	mtctr r12
/* 804F1C44  4E 80 04 21 */	bctrl 
/* 804F1C48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F1C4C  7C 08 03 A6 */	mtlr r0
/* 804F1C50  38 21 00 20 */	addi r1, r1, 0x20
/* 804F1C54  4E 80 00 20 */	blr 
