lbl_80519BCC:
/* 80519BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80519BD0  7C 08 02 A6 */	mflr r0
/* 80519BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80519BD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80519BDC  3B E0 00 00 */	li r31, 0
/* 80519BE0  93 C1 00 08 */	stw r30, 8(r1)
/* 80519BE4  7C 7E 1B 78 */	mr r30, r3
/* 80519BE8  81 83 09 98 */	lwz r12, 0x998(r3)
/* 80519BEC  7D 89 03 A6 */	mtctr r12
/* 80519BF0  4E 80 04 21 */	bctrl 
/* 80519BF4  4B E7 E8 05 */	bl mDemo_Get_talk_actor
/* 80519BF8  7C 03 F0 40 */	cmplw r3, r30
/* 80519BFC  41 82 00 14 */	beq lbl_80519C10
/* 80519C00  38 60 00 4A */	li r3, 0x4a
/* 80519C04  38 80 00 40 */	li r4, 0x40
/* 80519C08  4B E8 3D C9 */	bl mEv_set_status
/* 80519C0C  3B E0 00 01 */	li r31, 1
lbl_80519C10:
/* 80519C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80519C14  7F E3 FB 78 */	mr r3, r31
/* 80519C18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80519C1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80519C20  7C 08 03 A6 */	mtlr r0
/* 80519C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80519C28  4E 80 00 20 */	blr 
