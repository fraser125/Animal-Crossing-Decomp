lbl_804085B4:
/* 804085B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804085B8  7C 08 02 A6 */	mflr r0
/* 804085BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804085C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804085C4  7C 9F 23 78 */	mr r31, r4
/* 804085C8  93 C1 00 08 */	stw r30, 8(r1)
/* 804085CC  7C 7E 1B 78 */	mr r30, r3
/* 804085D0  4B FF F6 AD */	bl padmgr_LockContData
/* 804085D4  7F C3 F3 78 */	mr r3, r30
/* 804085D8  7F E4 FB 78 */	mr r4, r31
/* 804085DC  4B FF FE AD */	bl padmgr_RequestPadData_NonLock
/* 804085E0  4B FF F6 D5 */	bl padmgr_UnlockContData
/* 804085E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804085E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804085EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804085F0  7C 08 03 A6 */	mtlr r0
/* 804085F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804085F8  4E 80 00 20 */	blr 
