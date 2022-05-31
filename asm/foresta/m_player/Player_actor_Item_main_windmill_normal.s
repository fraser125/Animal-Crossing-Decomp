lbl_804E39DC:
/* 804E39DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E39E0  7C 08 02 A6 */	mflr r0
/* 804E39E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E39E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E39EC  7C 9F 23 78 */	mr r31, r4
/* 804E39F0  93 C1 00 08 */	stw r30, 8(r1)
/* 804E39F4  7C 7E 1B 78 */	mr r30, r3
/* 804E39F8  4B FF FA 95 */	bl func_804E348C
/* 804E39FC  7F C3 F3 78 */	mr r3, r30
/* 804E3A00  7F E4 FB 78 */	mr r4, r31
/* 804E3A04  4B FF FC 81 */	bl Player_actor_Item_windmill_CulcRotationSpeed
/* 804E3A08  7F C3 F3 78 */	mr r3, r30
/* 804E3A0C  4B FF D1 DD */	bl Player_actor_Item_CulcAnimation_Base
/* 804E3A10  7F C3 F3 78 */	mr r3, r30
/* 804E3A14  4B FF C1 D1 */	bl Player_actor_sound_move_temochi_kazaguruma
/* 804E3A18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E3A1C  38 60 00 00 */	li r3, 0
/* 804E3A20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E3A24  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E3A28  7C 08 03 A6 */	mtlr r0
/* 804E3A2C  38 21 00 10 */	addi r1, r1, 0x10
/* 804E3A30  4E 80 00 20 */	blr 
