lbl_804A9E3C:
/* 804A9E3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A9E40  7C 08 02 A6 */	mflr r0
/* 804A9E44  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A9E48  80 83 01 C0 */	lwz r4, 0x1c0(r3)
/* 804A9E4C  48 00 02 95 */	bl aTUMB_setupAction
/* 804A9E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A9E54  7C 08 03 A6 */	mtlr r0
/* 804A9E58  38 21 00 10 */	addi r1, r1, 0x10
/* 804A9E5C  4E 80 00 20 */	blr 
