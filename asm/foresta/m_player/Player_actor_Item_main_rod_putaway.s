lbl_804E2804:
/* 804E2804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E2808  7C 08 02 A6 */	mflr r0
/* 804E280C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E2810  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E2814  7C 7F 1B 78 */	mr r31, r3
/* 804E2818  4B FF E3 D1 */	bl Player_actor_Item_CulcAnimation_Base
/* 804E281C  7F E3 FB 78 */	mr r3, r31
/* 804E2820  4B FF FF 85 */	bl Player_actor_Item_Set_Value_forUki_putaway
/* 804E2824  80 9F 0C F8 */	lwz r4, 0xcf8(r31)
/* 804E2828  7F E3 FB 78 */	mr r3, r31
/* 804E282C  4B FF FF 1D */	bl Player_actor_Item_Set_GyoeiScale_forUki_putaway
/* 804E2830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E2834  38 60 00 00 */	li r3, 0
/* 804E2838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E283C  7C 08 03 A6 */	mtlr r0
/* 804E2840  38 21 00 10 */	addi r1, r1, 0x10
/* 804E2844  4E 80 00 20 */	blr 
