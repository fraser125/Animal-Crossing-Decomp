lbl_804A9E60:
/* 804A9E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A9E64  7C 08 02 A6 */	mflr r0
/* 804A9E68  7C 65 1B 78 */	mr r5, r3
/* 804A9E6C  7C 83 23 78 */	mr r3, r4
/* 804A9E70  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A9E74  38 85 00 28 */	addi r4, r5, 0x28
/* 804A9E78  48 18 41 31 */	bl sAdo_OngenTrgStart
/* 804A9E7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A9E80  7C 08 03 A6 */	mtlr r0
/* 804A9E84  38 21 00 10 */	addi r1, r1, 0x10
/* 804A9E88  4E 80 00 20 */	blr 
