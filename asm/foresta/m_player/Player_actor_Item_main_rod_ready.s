lbl_804E1FC8:
/* 804E1FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1FCC  7C 08 02 A6 */	mflr r0
/* 804E1FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1FD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E1FD8  7C 7F 1B 78 */	mr r31, r3
/* 804E1FDC  4B FF EC 0D */	bl Player_actor_Item_CulcAnimation_Base
/* 804E1FE0  7F E3 FB 78 */	mr r3, r31
/* 804E1FE4  4B FF FF 91 */	bl Player_actor_Item_Set_Value_forUki_ready
/* 804E1FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1FEC  38 60 00 00 */	li r3, 0
/* 804E1FF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E1FF4  7C 08 03 A6 */	mtlr r0
/* 804E1FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1FFC  4E 80 00 20 */	blr 
