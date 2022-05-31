lbl_804F59CC:
/* 804F59CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F59D0  7C 08 02 A6 */	mflr r0
/* 804F59D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F59D8  39 61 00 20 */	addi r11, r1, 0x20
/* 804F59DC  4B BA 54 F5 */	bl func_8009AED0
/* 804F59E0  7C 7C 1B 78 */	mr r28, r3
/* 804F59E4  7C 9D 23 78 */	mr r29, r4
/* 804F59E8  83 E3 0F 30 */	lwz r31, 0xf30(r3)
/* 804F59EC  7C BE 2B 78 */	mr r30, r5
/* 804F59F0  4B EE 65 79 */	bl mPlib_check_player_warp_forEvent
/* 804F59F4  2C 03 00 00 */	cmpwi r3, 0
/* 804F59F8  41 82 00 0C */	beq lbl_804F5A04
/* 804F59FC  38 00 00 08 */	li r0, 8
/* 804F5A00  90 1F 02 34 */	stw r0, 0x234(r31)
lbl_804F5A04:
/* 804F5A04  2C 1E 00 05 */	cmpwi r30, 5
/* 804F5A08  41 82 00 38 */	beq lbl_804F5A40
/* 804F5A0C  40 80 00 10 */	bge lbl_804F5A1C
/* 804F5A10  2C 1E 00 03 */	cmpwi r30, 3
/* 804F5A14  41 82 00 14 */	beq lbl_804F5A28
/* 804F5A18  48 00 00 60 */	b lbl_804F5A78
lbl_804F5A1C:
/* 804F5A1C  2C 1E 00 07 */	cmpwi r30, 7
/* 804F5A20  40 80 00 58 */	bge lbl_804F5A78
/* 804F5A24  48 00 00 2C */	b lbl_804F5A50
lbl_804F5A28:
/* 804F5A28  4B EE 65 41 */	bl mPlib_check_player_warp_forEvent
/* 804F5A2C  2C 03 00 00 */	cmpwi r3, 0
/* 804F5A30  40 82 00 B8 */	bne lbl_804F5AE8
/* 804F5A34  38 00 00 03 */	li r0, 3
/* 804F5A38  90 1F 02 34 */	stw r0, 0x234(r31)
/* 804F5A3C  48 00 00 AC */	b lbl_804F5AE8
lbl_804F5A40:
/* 804F5A40  7F A3 EB 78 */	mr r3, r29
/* 804F5A44  38 80 00 1A */	li r4, 0x1a
/* 804F5A48  48 00 04 E1 */	bl func_804F5F28
/* 804F5A4C  48 00 00 9C */	b lbl_804F5AE8
lbl_804F5A50:
/* 804F5A50  4B EE 65 19 */	bl mPlib_check_player_warp_forEvent
/* 804F5A54  2C 03 00 00 */	cmpwi r3, 0
/* 804F5A58  40 82 00 14 */	bne lbl_804F5A6C
/* 804F5A5C  7F A3 EB 78 */	mr r3, r29
/* 804F5A60  38 80 00 1A */	li r4, 0x1a
/* 804F5A64  48 00 01 39 */	bl func_804F5B9C
/* 804F5A68  48 00 00 80 */	b lbl_804F5AE8
lbl_804F5A6C:
/* 804F5A6C  38 00 00 07 */	li r0, 7
/* 804F5A70  90 1F 02 34 */	stw r0, 0x234(r31)
/* 804F5A74  48 00 00 74 */	b lbl_804F5AE8
lbl_804F5A78:
/* 804F5A78  28 1F 00 00 */	cmplwi r31, 0
/* 804F5A7C  41 82 00 6C */	beq lbl_804F5AE8
/* 804F5A80  7F A3 EB 78 */	mr r3, r29
/* 804F5A84  4B FD EB F1 */	bl Player_actor_CheckController_forRod
/* 804F5A88  2C 03 00 00 */	cmpwi r3, 0
/* 804F5A8C  41 82 00 28 */	beq lbl_804F5AB4
/* 804F5A90  4B EE 64 D9 */	bl mPlib_check_player_warp_forEvent
/* 804F5A94  2C 03 00 00 */	cmpwi r3, 0
/* 804F5A98  40 82 00 10 */	bne lbl_804F5AA8
/* 804F5A9C  38 00 00 06 */	li r0, 6
/* 804F5AA0  90 1F 02 34 */	stw r0, 0x234(r31)
/* 804F5AA4  48 00 00 44 */	b lbl_804F5AE8
lbl_804F5AA8:
/* 804F5AA8  38 00 00 07 */	li r0, 7
/* 804F5AAC  90 1F 02 34 */	stw r0, 0x234(r31)
/* 804F5AB0  48 00 00 38 */	b lbl_804F5AE8
lbl_804F5AB4:
/* 804F5AB4  4B EE 64 B5 */	bl mPlib_check_player_warp_forEvent
/* 804F5AB8  2C 03 00 00 */	cmpwi r3, 0
/* 804F5ABC  40 82 00 2C */	bne lbl_804F5AE8
/* 804F5AC0  80 1C 0D 18 */	lwz r0, 0xd18(r28)
/* 804F5AC4  2C 00 00 00 */	cmpwi r0, 0
/* 804F5AC8  40 82 00 10 */	bne lbl_804F5AD8
/* 804F5ACC  80 1C 0D 1C */	lwz r0, 0xd1c(r28)
/* 804F5AD0  2C 00 00 00 */	cmpwi r0, 0
/* 804F5AD4  41 82 00 14 */	beq lbl_804F5AE8
lbl_804F5AD8:
/* 804F5AD8  38 60 00 08 */	li r3, 8
/* 804F5ADC  38 00 00 07 */	li r0, 7
/* 804F5AE0  90 7F 02 34 */	stw r3, 0x234(r31)
/* 804F5AE4  90 1F 02 34 */	stw r0, 0x234(r31)
lbl_804F5AE8:
/* 804F5AE8  39 61 00 20 */	addi r11, r1, 0x20
/* 804F5AEC  4B BA 54 31 */	bl func_8009AF1C
/* 804F5AF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F5AF4  7C 08 03 A6 */	mtlr r0
/* 804F5AF8  38 21 00 20 */	addi r1, r1, 0x20
/* 804F5AFC  4E 80 00 20 */	blr 
