lbl_805077BC:
/* 805077BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805077C0  7C 08 02 A6 */	mflr r0
/* 805077C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805077C8  39 61 00 18 */	addi r11, r1, 0x18
/* 805077CC  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 805077D0  4B B9 37 05 */	bl func_8009AED4
/* 805077D4  FF E0 08 90 */	fmr f31, f1
/* 805077D8  7C 9E 23 78 */	mr r30, r4
/* 805077DC  7C 7D 1B 78 */	mr r29, r3
/* 805077E0  7C BF 2B 78 */	mr r31, r5
/* 805077E4  38 80 00 73 */	li r4, 0x73
/* 805077E8  4B FD 2C 71 */	bl Player_actor_check_request_main_able
/* 805077EC  2C 03 00 00 */	cmpwi r3, 0
/* 805077F0  41 82 00 2C */	beq lbl_8050781C
/* 805077F4  7F A3 EB 78 */	mr r3, r29
/* 805077F8  4B ED 1E 49 */	bl get_player_actor_withoutCheck
/* 805077FC  93 C3 0D 60 */	stw r30, 0xd60(r3)
/* 80507800  7F E5 FB 78 */	mr r5, r31
/* 80507804  38 80 00 73 */	li r4, 0x73
/* 80507808  D3 E3 0D 64 */	stfs f31, 0xd64(r3)
/* 8050780C  7F A3 EB 78 */	mr r3, r29
/* 80507810  4B FC D8 05 */	bl Player_actor_request_main_index
/* 80507814  38 60 00 01 */	li r3, 1
/* 80507818  48 00 00 08 */	b lbl_80507820
lbl_8050781C:
/* 8050781C  38 60 00 00 */	li r3, 0
lbl_80507820:
/* 80507820  39 61 00 18 */	addi r11, r1, 0x18
/* 80507824  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80507828  4B B9 36 F9 */	bl func_8009AF20
/* 8050782C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80507830  7C 08 03 A6 */	mtlr r0
/* 80507834  38 21 00 20 */	addi r1, r1, 0x20
/* 80507838  4E 80 00 20 */	blr 
