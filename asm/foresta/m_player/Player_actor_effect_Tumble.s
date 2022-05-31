lbl_804E7BFC:
/* 804E7BFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E7C00  7C 08 02 A6 */	mflr r0
/* 804E7C04  3D 00 00 01 */	lis r8, 0x0001 /* 0x0000FFFF@ha */
/* 804E7C08  7C 87 23 78 */	mr r7, r4
/* 804E7C0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E7C10  7C AA 2B 78 */	mr r10, r5
/* 804E7C14  7C 69 1B 78 */	mr r9, r3
/* 804E7C18  38 81 00 08 */	addi r4, r1, 8
/* 804E7C1C  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 804E7C20  39 08 FF FF */	addi r8, r8, 0xFFFF /* 0x0000FFFF@l */
/* 804E7C24  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 804E7C28  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E7C2C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E7C30  38 A0 00 02 */	li r5, 2
/* 804E7C34  90 C1 00 08 */	stw r6, 8(r1)
/* 804E7C38  3C 63 00 02 */	addis r3, r3, 2
/* 804E7C3C  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804E7C40  38 60 00 35 */	li r3, 0x35
/* 804E7C44  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E7C48  80 09 00 30 */	lwz r0, 0x30(r9)
/* 804E7C4C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E7C50  80 09 00 98 */	lwz r0, 0x98(r9)
/* 804E7C54  81 86 00 00 */	lwz r12, 0(r6)
/* 804E7C58  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804E7C5C  A8 C9 00 36 */	lha r6, 0x36(r9)
/* 804E7C60  7C 09 07 34 */	extsh r9, r0
/* 804E7C64  7D 89 03 A6 */	mtctr r12
/* 804E7C68  4E 80 04 21 */	bctrl 
/* 804E7C6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E7C70  7C 08 03 A6 */	mtlr r0
/* 804E7C74  38 21 00 20 */	addi r1, r1, 0x20
/* 804E7C78  4E 80 00 20 */	blr 
