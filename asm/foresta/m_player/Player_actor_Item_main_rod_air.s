lbl_804E2164:
/* 804E2164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E2168  7C 08 02 A6 */	mflr r0
/* 804E216C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E2170  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E2174  7C 7F 1B 78 */	mr r31, r3
/* 804E2178  4B FF EA 71 */	bl Player_actor_Item_CulcAnimation_Base
/* 804E217C  7F E3 FB 78 */	mr r3, r31
/* 804E2180  4B FF FF 91 */	bl Player_actor_Item_Set_Value_forUki_air
/* 804E2184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E2188  38 60 00 00 */	li r3, 0
/* 804E218C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E2190  7C 08 03 A6 */	mtlr r0
/* 804E2194  38 21 00 10 */	addi r1, r1, 0x10
/* 804E2198  4E 80 00 20 */	blr 
