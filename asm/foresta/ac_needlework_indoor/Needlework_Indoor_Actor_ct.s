lbl_80482FC0:
/* 80482FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80482FC4  7C 08 02 A6 */	mflr r0
/* 80482FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80482FCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80482FD0  7C 9F 23 78 */	mr r31, r4
/* 80482FD4  93 C1 00 08 */	stw r30, 8(r1)
/* 80482FD8  7C 7E 1B 78 */	mr r30, r3
/* 80482FDC  4B FF FF 99 */	bl aNI_SetClip
/* 80482FE0  7F C3 F3 78 */	mr r3, r30
/* 80482FE4  4B FF FD 71 */	bl aNI_MallocRam
/* 80482FE8  7F C3 F3 78 */	mr r3, r30
/* 80482FEC  4B FF FE 29 */	bl aNI_SetMoveBg
/* 80482FF0  7F C3 F3 78 */	mr r3, r30
/* 80482FF4  7F E4 FB 78 */	mr r4, r31
/* 80482FF8  4B FF FC BD */	bl func_80482CB4
/* 80482FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80483000  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80483004  83 C1 00 08 */	lwz r30, 8(r1)
/* 80483008  7C 08 03 A6 */	mtlr r0
/* 8048300C  38 21 00 10 */	addi r1, r1, 0x10
/* 80483010  4E 80 00 20 */	blr 
