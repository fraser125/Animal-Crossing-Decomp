lbl_804E1F2C:
/* 804E1F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1F30  7C 08 02 A6 */	mflr r0
/* 804E1F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1F38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E1F3C  7C 9F 23 78 */	mr r31, r4
/* 804E1F40  93 C1 00 08 */	stw r30, 8(r1)
/* 804E1F44  7C 7E 1B 78 */	mr r30, r3
/* 804E1F48  4B FF EC A1 */	bl Player_actor_Item_CulcAnimation_Base
/* 804E1F4C  7F C3 F3 78 */	mr r3, r30
/* 804E1F50  7F E4 FB 78 */	mr r4, r31
/* 804E1F54  4B FF FF 6D */	bl Player_actor_Item_Set_Value_forUki_normal
/* 804E1F58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1F5C  38 60 00 00 */	li r3, 0
/* 804E1F60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E1F64  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E1F68  7C 08 03 A6 */	mtlr r0
/* 804E1F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1F70  4E 80 00 20 */	blr 
